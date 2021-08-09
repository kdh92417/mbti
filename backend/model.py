from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship

from pydantic import BaseModel

from db import Base
from db import ENGINE


class AnswerTable(Base):
    __tablename__ = "answers"

    id = Column(Integer, primary_key=True, index=True)
    answer = Column(String(255), index=True)


class QuestionTable(Base):
    __tablename__ = "questions"

    id = Column(Integer, primary_key=True, index=True)
    question_A = Column(String(255), index=True)
    question_B = Column(String(255), index=True)


class ResultTable(Base):
    __tablename__ = "results"

    id = Column(Integer, primary_key=True, index=True)
    mbti_type = Column(String(10), index=True)
    title = Column(String(100), index=True)
    img_url = Column(String(255), index=True)
    img_name = Column(String(30), index=True)
    sub_name = Column(String(30), index=True)
    explain = Column(String(1000), index=True)


class Answer(BaseModel):
    answer = str


class Question(BaseModel):
    question_A = str
    question_B = str


class Result(BaseModel):
    mbti_type = str
    title = str
    img_url = str
    img_name = str
    sub_name = str
    explain = str
