import React, {useContext} from 'react';
import {observer} from "mobx-react-lite";
import {Context} from "../index";
import {Card, Row} from "react-bootstrap";

const BrandBar = observer(() => {
    const {device} = useContext(Context)

    return (
        <Row className="d-flex">
            {device.brands.map(brand =>
                <Card
                    style={{cursor:'pointer', background: "#eee7e7", "border": "10 black", text:"white"}}
                    key={brand.id}
                    className="p-3 ml-2"
                    onClick={() => device.setSelectedBrand(brand)}
                    border={brand.id === device.selectedBrand.id ? '#eee9fa' : 'white'}
                    text="black"
                >
                    {brand.name}
                </Card>
            )}
        </Row>
    );
});

export default BrandBar;
