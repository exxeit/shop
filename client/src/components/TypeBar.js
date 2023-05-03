import React, {useContext} from 'react';
import {observer} from "mobx-react-lite";
import {Context} from "../index";
import Col from "react-bootstrap/Col";
import ListGroup from "react-bootstrap/ListGroup";

const TypeBar = observer(() => {
    const {device} = useContext(Context)
    return (
        <ul className="list-group list-group-item-dark">
            <ListGroup>
            {device.types.map(type =>
                <ListGroup.Item
                    style={{cursor: 'pointer'}}
                    text = "#eee9fa"
                    active={type.id === device.selectedType.id}
                    className="p-3 ml-2"
                    onClick={() => device.setSelectedType(type)}
                    border={type.id === device.selectedType.id ? '#eee9fa' : '#eee9fa'}
                    key={type.id}
                >
                    {type.name}

                </ListGroup.Item>
            )}
        </ListGroup>
            </ul>);

});

export default TypeBar;
