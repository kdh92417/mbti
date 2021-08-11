import { Link } from 'react-router-dom';
import { Container, Col, Row, Button } from 'react-bootstrap';

export default function Home() {
    return (
        <>
            <Container 
                style={{
                    width : "60%",
                    height : "400px",
                    marginTop : "130px"
                }}
            >
                <Row className="row justify-content-center">
                    <h5>심리테스트로 알아보는 나의 성격유형</h5>
                    {/* <Col className="col-auto mr-auto" style={{ paddingLeft : "0px"}}><h3>{data.id}</h3></Col>
                    <Col className="col-auto" style={{ paddingRight : "0px"}}>{data.id} / 12</Col> */}
                </Row>
                <Row className="row justify-content-center" 
                    style={{height : "200px", textAlign : "center", alignItems : "center"}}>
                    {/* <Col><h3>{data.answer}</h3></Col> */}
                    <Col>
                        <div>
                            <h1>나에게 어울리는</h1>
                            <h1><strong>스니커즈 브랜드</strong></h1>
                        </div>
                    </Col>
                </Row>
                <Row className="row justify-content-center">
                    <Link to="/page/1" 
                          style={{width : "30%", height : "50px"}}
                          className="btn btn-primary"
                    >
                        테스트 시작하기
                    </Link>
                </Row>
            </Container>
        </>
    );
}