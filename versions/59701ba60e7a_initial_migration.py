"""Initial migration

Revision ID: 59701ba60e7a
Revises: 
Create Date: 2024-12-10 04:13:31.792579

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '59701ba60e7a'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('student',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('student_number', sa.String(length=50), nullable=False),
    sa.Column('name', sa.String(length=100), nullable=False),
    sa.Column('year_level', sa.String(length=50), nullable=False),
    sa.Column('precinct_number', sa.String(length=50), nullable=False),
    sa.Column('email', sa.String(length=100), nullable=False),
    sa.Column('unique_code', sa.String(length=100), nullable=False),
    sa.PrimaryKeyConstraint('id'),
    sa.UniqueConstraint('email'),
    sa.UniqueConstraint('student_number'),
    sa.UniqueConstraint('unique_code')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('student')
    # ### end Alembic commands ###
