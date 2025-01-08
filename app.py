from flask import Blueprint, render_template
from models import db, Candidate, VotingTime
from flask_login import login_required
from datetime import datetime

dashboard_bp = Blueprint('dashboard_bp', __name__, template_folder='Templates')

@dashboard_bp.route('/home')
@login_required
def dashboard():
    # Fetch the vote counts for each committee
    committees = Candidate.query.with_entities(Candidate.committee, db.func.sum(Candidate.votes).label('total_votes'))\
        .group_by(Candidate.committee).all()

    # Get the latest voting time
    voting_time = VotingTime.query.order_by(VotingTime.voting_end_time.desc()).first()

    # Calculate the remaining time until voting ends
    if voting_time:
        time_left = (voting_time.voting_end_time - datetime.now()).total_seconds() * 1000  # in milliseconds
    else:
        time_left = None

    # Convert data into a format suitable for chart.js
    committee_names = [committee.committee for committee in committees]
    vote_counts = [committee.total_votes for committee in committees]

    return render_template('Admin Dashboard.html', 
                           committees=committee_names, 
                           votes=vote_counts,
                           time_left=time_left)
@dashboard_bp.route('/summary')
def summary():
    results = Candidate.query.order_by(Candidate.votes.desc()).all()
    return render_template('summary.html', results=results)