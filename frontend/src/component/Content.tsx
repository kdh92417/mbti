import { Link } from 'react-router-dom';
import { Col, Row, Button } from 'react-bootstrap';
import { useState } from 'react';

interface IProps {
    data: IPage;
}

export interface IPage {
    id: number,
    answer: string,
    question_A: string,
    question_B: string
}

export default function Context({ data: d }: IProps) {
    const [data, dataSet] = useState(d);

    return (
        <>
            <Row className="row justify-content-between">
                {/* <Link to={``}><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M16.67 0l2.83 2.829-9.339 9.175 9.339 9.167-2.83 2.829-12.17-11.996z"/></svg></Link> */}

                <Col className="col-auto mr-auto" style={{ paddingLeft: "0px" }}><h3>{data.id}</h3></Col>
                <Col className="col-auto" style={{ paddingRight: "0px" }}>{data.id} / 12</Col>
            </Row>
            <Row style={{ height: "200px", textAlign: "center", alignItems: "center" }}>
                <Col><h3>{data.answer}</h3></Col>
            </Row>
            {/* <Link to={`/day/${day.day}`}>Day {day.day}</Link> */}
            <Row>
                <Button style={{ width: "100%", height: "50px" }}>
                    {data.question_A}
                </Button>
            </Row>
            <br></br>
            <Row>
                <Button style={{ width: "100%", height: "50px" }}>
                    {data.question_B}
                </Button>
            </Row>
        </>
    );
}