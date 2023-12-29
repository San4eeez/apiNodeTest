const express = require('express');
const router = express.Router();
const userController = require('../controller/user.controller');

router.post('/user', userController.createUser);
router.get('/user', userController.getUsers);
router.get('/user/:id', userController.GetOneUser);
router.put('/user/', userController.updateUser);
router.delete('/user/:id', userController.deleteUser);

module.exports = router;
