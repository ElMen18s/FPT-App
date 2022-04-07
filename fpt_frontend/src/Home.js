import React,{Component} from "react"
import {Navbar,Nav,Container,Button,ButtonToolbar} from 'react-bootstrap';
import {Row, Col, Form} from 'react-bootstrap';
import {Table} from 'react-bootstrap';
import {AddModal} from './AddModal';
import './Home.css';
export class Home extends Component{
    constructor(props){
        super(props);
        this.state={customers:[],addModalShow:false}
    }    

    refreshList(){
        fetch('https://localhost:44336/api/Fpt')
        .then(response=>response.json())
        .then(data=>{
            this.setState({customers:data});
        })    
    }
    componentDidMount(){
        this.refreshList();
    }
    componentDidUpdate(){
        this.refreshList();
    }

    delete(id){
        if(window.confirm('Are you sure?')){
            fetch('https://localhost:44336/api/Fpt/'+id,{
                method:'DELETE',
                header:{'Accept':'application/json',
                'Content-Type':'application/json'}
            })
        }
    }
    render (){
        const {customers}=this.state;
        let addModalClose=()=>this.setState({addModalShow:false});
        return(
            <div>
                <Navbar bg="dark" expand="lg">
                    <Container>
                        <Navbar.Brand className="text-white">FPT App</Navbar.Brand>
                        <Navbar.Toggle aria-controls="basic-navbar-nav" />
                        <Navbar.Collapse id="basic-navbar-nav">
                        <Nav className="me-auto">
                            <Nav.Link className="d-inline p-2 bg-dark text-white" to="/">Home</Nav.Link>                               
                        </Nav>
                        </Navbar.Collapse>
                    </Container>
                </Navbar>
                <Row>
                    <Col sm={2}>
                        <Form.Group controlId="txtSearch">                            
                            <Form.Control type="text" name="txtSearch" 
                            placeholder="Search..."/>                            
                        </Form.Group>
                    </Col>
                    <Col sm={1}>
                        <ButtonToolbar>
                            <Button variant='primary' >Search</Button>                            
                        </ButtonToolbar> 
                    </Col>                    
                </Row>   
                <Row>
                    <Col sm={4}>
                        <Form.Group controlId="AddCustomer">
                            <ButtonToolbar>
                                <Button variant='primary' onClick={()=>this.setState({addModalShow:true})}>Add Customer</Button>
                                <AddModal show={this.state.addModalShow} onHide={addModalClose}/>
                            </ButtonToolbar> 
                        </Form.Group>
                    </Col>  
                </Row> 
                                         
                <Table className="mt-4" striped bordered hover size="sm">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Notes</th>
                            <th>Options</th>
                        </tr>                            
                    </thead>
                    <tbody>
                            {customers.map(cus=>
                                <tr key={cus.customerID}>
                                    <td>{cus.customerID}</td>
                                    <td>{cus.customerName}</td>
                                    <td>{cus.phone}</td>
                                    <td>{cus.email}</td>
                                    <td>{cus.notes}</td>
                                    <td>
                                        <ButtonToolbar>
                                            <Button className="mr-2" variant="danger" onClick={()=>this.delete(cus.customerID)}>Delete</Button>
                                        </ButtonToolbar>                                
                                    </td>
                                </tr>)}
                    </tbody>
                    </Table>                    
            </div>                
        )
 }
}