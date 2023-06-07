import React, {useContext, useEffect, useState} from 'react';
import {Button, Card, Col, Container, Form, Image, Row} from "react-bootstrap";

import {useHistory, useParams} from 'react-router-dom'
import {
    addToFav, changeInfo,
    deleteInfo,
    delToFav,
    fetchOneDevice,
    isFav, postInfo,
    updateName,
    updatePhoto,
    updatePrice
} from "../http/deviceAPI";
import {ORDER_MAKE, SHOP_ROUTE} from "../utils/consts";
import {Context} from "../index";
import {deleteDevice} from "../http/deviceAPI";

import star from '../assets/star.png';
import goldStar from '../assets/goldStar.png';
import Slider from "../components/Slider";

const DevicePage = () => {
    const [addInfo, setAddInfo] = useState(false)
    const [isFavorite, setIsFavorite] = useState(false);
    const [selectedOption, setSelectedOption] = useState('1');

    const [editPrice, setEditPrice] = useState(false)
    const [editName, setEditName] = useState(false)
    const [editInfo, setEditInfo] = useState(-1)
    const [file, setFile] = useState(null)

    const [saveButtonDisabled, setSaveButtonDisabled] = useState(true)

    const history = useHistory()
    const {user} = useContext(Context)
    const [isAdmin, setIsAdmin] = useState(user.isAdmin)
    const [device, setDevice] = useState({info: []})

    const [newPrice, setNewPrice] = useState(device.price);
    const [newName, setNewName] = useState(device.name);
    const [newInfoTitle, setNewInfoTitle] = useState("")
    const [newInfoDescription, setNewInfoDescription] = useState("")

    const {id} = useParams()
    const toggleFavorite = async () => {
        if (isFavorite) {
            await delToFav(id, user.id);
        } else {
            await addToFav(id, user.id);
        }

        setIsFavorite(!isFavorite);
    };

    const handlePriceChange = (event) => {
        const inputValue = event.target.value;
        const priceRegex = /^\d+(\.\d{1,2})?$/;

        if (priceRegex.test(inputValue) || '') {
            setNewPrice(inputValue);
        }
    };

    const handleNameChange = (event) => {
        setNewName(event.target.value);
    };

    const handleInfoTitleChange = (event) => {
        setNewInfoTitle(event.target.value)
    }

    const handleInfoDescriptionChange = (event) => {
        setNewInfoDescription(event.target.value)
    }

    useEffect(async () => {
        fetchOneDevice(id).then(data => setDevice(data))
        let res = await isFav(id, user.id)
        setIsFavorite(res)
    }, [])

    const click = async () => {
        try {
            await deleteDevice(id);
            history.push(SHOP_ROUTE);
        } catch (e) {
            console.log(e)
        }
    }

    const handleSubmitPrice = async (event) => {
        event.preventDefault();
        const data = await updatePrice(id, newPrice);
        setNewPrice(data.price)
        setEditPrice(false)
    };

    const handleSubmitName = async (event) => {
        event.preventDefault();
        const data = await updateName(id, newName);
        setNewName(data.name)
        setEditName(false)
    };

    useEffect(() => {
        setNewPrice(device.price)
        setNewName(device.name)
    }, [device.price, device.name]);

    // photo
    const selectFile = e => {
        const selectedFile = e.target.files[0]
        if (selectedFile && selectedFile.type.startsWith('image/')) {
            setFile(selectedFile)
            setSaveButtonDisabled(false)
        } else {
            setFile(null)
            setSaveButtonDisabled(true)
        }
    }

    const savePhoto = async () => {
        if (saveButtonDisabled) return null
        let data = await updatePhoto(id ,file, selectedOption)
        fetchOneDevice(id).then(data => setDevice(data))
    }

    const del_info = async (infoId) => {
        const data = await deleteInfo(infoId)
        fetchOneDevice(id).then(data => setDevice(data))
    }

    const handleSubmitInfo = async () => {
        if (!newInfoTitle || !newInfoDescription) {
            return null
        }
        setAddInfo(false)
        const data = await postInfo(id, newInfoTitle, newInfoDescription)
        setNewInfoTitle("")
        setNewInfoDescription("")
        fetchOneDevice(id).then(data => setDevice(data))
    }

    const handleChangeInfo = async (info_id) => {
        if (!newInfoTitle || !newInfoDescription) {
            return null
        }
        setAddInfo(false)
        const data = await changeInfo(info_id, newInfoTitle, newInfoDescription)
        setNewInfoTitle("")
        setNewInfoDescription("")
        fetchOneDevice(id).then(data => setDevice(data))
        setEditInfo(0)
    }

    const edit_info = async (infoId, title, desc) => {
        setNewInfoTitle(title)
        setNewInfoDescription(desc)
        setAddInfo(false)
        setEditInfo(infoId)
    }

    const add_info = () => {
        setAddInfo(true)
        setNewInfoTitle("")
        setNewInfoDescription("")
        setEditInfo(0)
    }

    const handleOptionChange = (event) => {
        setSelectedOption(event.target.value);
    }

    return (
        <Container className="mt-3">
            <Row>
                <Col md={7}>
                    <Slider device={device}/>
                    {
                        isAdmin
                            ? <div>
                                <h4>Изменить фото:</h4>
                                <Form>
                                    {['radio'].map((type) => (
                                        <div key="inline-type" className="mb-3">
                                            <Form.Check
                                                inline
                                                label="1"
                                                name="group1"
                                                type="radio"
                                                id="inline-type-1"
                                                value="1"
                                                checked={selectedOption === '1'}
                                                onChange={handleOptionChange}
                                            />
                                            <Form.Check
                                                inline
                                                label="2"
                                                name="group1"
                                                type="radio"
                                                id="inline-type-2"
                                                value="2"
                                                checked={selectedOption === '2'}
                                                onChange={handleOptionChange}
                                            />
                                            <Form.Check
                                                inline
                                                label="3"
                                                name="group1"
                                                type="radio"
                                                id="inline-type-3"
                                                value="3"
                                                checked={selectedOption === '3'}
                                                onChange={handleOptionChange}
                                            />
                                        </div>
                                    ))}
                                </Form>
                                <Form.Control
                                className="mt-3"
                                type="file"
                                onChange={selectFile}
                                />
                                <div
                                    className="save_photo"
                                    onClick={savePhoto}
                                    disabled={saveButtonDisabled}
                                    style={{opacity: saveButtonDisabled ? 0.5 : 1}}
                                >
                                    Сохранить фото
                                </div>
                            </div>
                            : <></>
                    }
                </Col>
                <Col md={4}>
                    <Card
                        className="d-flex flex-column align-items-center justify-content-around"
                        style={{width: 450, height: 300, fontSize: 34}}
                    >
                        {
                            editName
                                ? <><input style={{width: 300, height: 45}} value={newName} onChange={handleNameChange} type="text"></input><div className="save_btn" onClick={handleSubmitName}><p>Save</p></div></>
                                : <h5 onClick={() => isAdmin && setEditName(true)}>{newName}</h5>
                        }
                        {
                            editPrice
                                ? <><input style={{width: 300, height: 45}} value={newPrice} onChange={handlePriceChange} type="number" min="1"></input><div className="save_btn" onClick={handleSubmitPrice}><p>Save</p></div></>
                                : <h3 onClick={() => isAdmin && setEditPrice(true)} color="skyblue">Цена: {newPrice} руб.</h3>
                        }
                        <Button className='btn btn-outline-success text-lg-end' onClick={() => history.push(ORDER_MAKE + '/' + device.id)} variant={"outline-success"}>Оставить заявку</Button>
                        <div className="fav_container">    <p>Избранное</p>
                            <div onClick={toggleFavorite}>        <img style={{maxHeight: 15}} src={isFavorite ? goldStar : star} alt="Favorite" />
                            </div>
                        </div>
                    </Card>
                </Col>
            </Row>
            <Row className="d-flex flex-column m-3">
                <h1>Характеристики</h1>
                {device.info.sort((a, b) => a.id - b.id).map((info, index) =>
                    <Row style={{background: index % 2 === 0 ? '#dce3f7' : 'dark', padding: 8}}>
                        <div className="info_row_container">
                            <div className="ingo_text">
                                {
                                    editInfo == info.id
                                        ?  <>
                                            <div className="add_info_container">
                                                <div>Хар-ка: <input value={newInfoTitle} onChange={handleInfoTitleChange} type={"text"}/></div>
                                                <div>Описание: <input value={newInfoDescription} onChange={handleInfoDescriptionChange} type={"text"}/></div>
                                                <div
                                                    className="save_btn"
                                                    onClick={() => handleChangeInfo(info.id)}
                                                    disabled={!newInfoTitle || !newInfoDescription}
                                                    style={{ opacity: newInfoTitle && newInfoDescription ? 1 : 0.5 }}
                                                >
                                                    <p>Сохранить</p>
                                                </div>
                                            </div>
                                        </>
                                        : <div onClick={() => edit_info(info.id, info.title, info.description)}>{info.title}: {info.description}</div>
                                }
                            </div>
                            {isAdmin && <div className="delete_ingo_btn" onClick={() => del_info(info.id)}>x</div>}
                        </div>
                    </Row>
                    // key={info.id} нет тк при удалении одинаковые цвета подряд
                )}
            </Row>
            <div className="device_buttons_container">
                {
                    addInfo && <div className="add_info_container">
                        <div>Хар-ка: <input value={newInfoTitle} onChange={handleInfoTitleChange} type={"text"}/></div>
                        <div>Описание: <input value={newInfoDescription} onChange={handleInfoDescriptionChange} type={"text"}/></div>
                        <div
                            className="save_btn"
                            onClick={handleSubmitInfo}
                            disabled={!newInfoTitle || !newInfoDescription}
                            style={{ opacity: newInfoTitle && newInfoDescription ? 1 : 0.5 }}
                        >
                            <p>Сохранить</p>
                        </div>
                    </div>
                }
                { (user.isAdmin  && !addInfo) && <button className='btn btn-primary' onClick={() => add_info()}>Добавить характеристику</button> }
                { user.isAdmin ? <button className='btn btn-danger' onClick={() => click()}>Удалить</button> : ""}
            </div>
        </Container>
    );
};

export default DevicePage;
