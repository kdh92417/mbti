import { useParams } from "react-router";
import { Container } from 'react-bootstrap';
import useFetch from '../hooks/useFetch';
import Context, { IPage } from './Content';


export default function Page() {
    const { page } = useParams<{ page: string }>();
    const pages: IPage[] = useFetch(`http://localhost:8000/page/${page}`);


    // console.log(pages.answer)
    return (
        <>
            <Container
                style={{
                    width: "60%",
                    height: "400px",
                    marginTop: "130px"
                }}
            >
                <Context data={ } />
            </Container>
        </>
    );
}