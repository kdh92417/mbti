import { Link } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { useParams } from "react-router";
import { Container, Col, Row, Button } from 'react-bootstrap';

export default function Page() {
    const { page } = useParams();
    const [data, setData] = useState({});

    useEffect(() => {
        fetch(`http://localhost:8000/page/${page}/`)
        .then(res => {
            return res.json();
        })
        .then(data => {
            setAnswer(data[0].answer);
            setQuestion([data[1].question_A, data[1].question_B]);
        });
    }, []);

    console.log()
    return (
        <>
            Hello
            {/* <div>
                <div>
                    <h3>{data[0].id}</h3>
                </div>
                <div>
                    <h3>{ data[0].answer }</h3>
                </div>
                <div>
                    <h5>{ data[1].question_A }</h5>
                    <h5>{ data[1].question_B }</h5>
                </div>
            </div> */}
        </>
    );
}