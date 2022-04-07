import React,{Component} from 'react';
import {Modal,Button, Row, Col, Form} from 'react-bootstrap';

export class AddModal extends Component{
    constructor(props){
        super(props);
        this.handleSubmit=this.handleSubmit.bind(this);
    }

    handleSubmit(event){
        event.preventDefault();
        fetch('https://localhost:44336/api/Fpt',{
            method:'POST',
            headers:{
                'Accept':'application/json',
                'Content-Type':'application/json'
            },
            body:JSON.stringify({
                CustomerName:event.target.txtName.value,
                Phone:event.target.txtPhone.value,
                Email:event.target.txtEmail.value,
                Notes:event.target.txtNotes.value
            })
        })
        .then(res=>res.json())
        .then((result)=>{
            alert(result);
        },
        (error)=>{
            alert('Failed');
        })
    }
    render(){
        return (
            <div className="container">

<Modal
{...this.props}
size="lg"
aria-labelledby="contained-modal-title-vcenter"
centered
>
    <Modal.Header clooseButton>
        <Modal.Title id="contained-modal-title-vcenter">
            Add Customer
        </Modal.Title>
    </Modal.Header>
    <Modal.Body>
    <Form onSubmit={this.handleSubmit}>
        <Row>
            <Col sm={6}>
                <Form.Group controlId="txtName">
                    <Form.Label>Name</Form.Label>
                    <Form.Control type="text" name="txtName" required 
                    placeholder="Name"/>
                </Form.Group>
            </Col>
            <Col sm={6}>
                <Form.Group controlId="txtPhone">
                    <Form.Label>Phone</Form.Label>
                    <Form.Control type="text" name="txtPhone" required 
                    placeholder="Phone"/>
                </Form.Group>
            </Col>
        </Row>
        <Row>            
            <Col sm={6}>
                <Form.Group controlId="txtEmail">
                    <Form.Label>Email</Form.Label>
                    <Form.Control type="text" name="txtEmail" required 
                    placeholder="Email"/>
                </Form.Group>
            </Col>
            <Col sm={6}>
                <Form.Group controlId="txtNotes">
                    <Form.Label>Notes</Form.Label>
                    <Form.Control type="text" name="txtNotes" required 
                    placeholder="Notes"/>
                </Form.Group>
            </Col>
            <Col sm={12}>
                <Form.Group>
                    <Button variant="primary" type="submit">
                        Add Customer
                    </Button>
                </Form.Group>
            </Col>
        </Row>
    </Form>
        
    </Modal.Body>
    
    <Modal.Footer>
        <Button variant="danger" onClick={this.props.onHide}>Close</Button>
    </Modal.Footer>

</Modal>

            </div>
        )
    }

}