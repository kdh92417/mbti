# https://github.com/hogeline/sample_fastapi

from fastapi import FastAPI
from typing import List
from starlette.middleware.cors import CORSMiddleware

from db import session
from model import AnswerTable, QuestionTable, ResultTable

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ----------API 정의------------


@app.get("/page/{page_id}")
def read_pages(page_id: int):
    answer = session.query(AnswerTable).filter(
        AnswerTable.id == page_id).first()
    questions = session.query(QuestionTable).filter(
        QuestionTable.id == page_id).first()
    return answer, questions


@app.get("/{type}")
def read_results(type: str):
    type = session.query(ResultTable).filter(
        ResultTable.mbti_type == type).first()
    return type
