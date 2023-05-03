import React, {useContext} from 'react';
import {Context} from "../index";
import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";
import {NavLink} from "react-router-dom";
import {ABOUT_ROUTE, ADMIN_ROUTE, DEVICE_ROUTE, LOGIN_ROUTE, SHOP_ROUTE} from "../utils/consts";
import {Button, Image} from "react-bootstrap";
import {observer} from "mobx-react-lite";
import Container from "react-bootstrap/Container";
import {useHistory} from 'react-router-dom'



const NavBar = observer(() => {
    const {user} = useContext(Context)
    const history = useHistory()
    const logOut = () => {
        user.setUser({})
        user.setIsAuth(false)
        localStorage.removeItem('token')
    }


    return (

        <Navbar bg="light" variant="dark">
            <Container>

                <NavLink style={{color:'black'}} to={SHOP_ROUTE}>Изделия из кожи</NavLink>

                {user.isAuth ?
                    <Nav className="ml-auto" style={{color: '#eee9fa'}}>

                        <Button className="ml-1 mr-2" variant={"outline-success"} onClick={() => history.push(DEVICE_ROUTE)}>Главная</Button>


                        <Button variant={"outline-info"} onClick={() => history.push(ABOUT_ROUTE)}>О нас</Button>

                        <Button
                            variant={"outline-danger"}
                            onClick={() => logOut()}
                            className="ml-2 mr-3"
                        >
                            Выйти
                        </Button>

                    </Nav>
                    :
                    <Nav className="ml-auto" style={{color: '#eee9fa'}}>
                        <Button variant={"outline-info"} onClick={() => history.push(LOGIN_ROUTE)}>Авторизация</Button>
                    </Nav>

                }
            </Container>
        </Navbar>

    );
});

export default NavBar;
