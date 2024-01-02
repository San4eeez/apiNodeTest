const  db = require('../db')
class UserController{
    async createUser(req,res){
        const {name,height,weight,base_experience,types,abilities,hp,attack,defense,special_attack,special_defense,speed} = req.body
        const newPerson = await db.query('INSERT INTO pokemon (name,height,weight,base_experience,types,abilities,hp,attack,defense,special_attack,special_defense,speed) values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12) RETURNING *',[name,height,weight,base_experience,JSON.stringify(types),JSON.stringify(abilities),hp,attack,defense,special_attack,special_defense,speed])
        res.json(newPerson.rows[0])
    }

    async getUsers(req,res){

        const users = await db.query('SELECT * FROM pokemon')
        res.json(users.rows)
    }

    async GetOneUser(req,res){
        const id = req.params.id
        const users = await db.query('SELECT * FROM pokemon where id = $1',[id])
        res.json(users.rows)
    }

    async updateUser(req, res) {
        const { name, height, weight, base_experience, types, abilities, hp, attack, defense, special_attack, special_defense, speed, id } = req.body;
        const user = await db.query('UPDATE pokemon SET name = $1, height = $2, weight = $3, base_experience = $4, types = $5, abilities = $6, hp = $7, attack = $8, defense = $9, special_attack = $10, special_defense = $11, speed = $12 WHERE id = $13 RETURNING *', [name, height, weight, base_experience, JSON.stringify(types), JSON.stringify(abilities), hp, attack, defense, special_attack, special_defense, speed, id]);
        res.json(user.rows[0]);
    }


    async deleteUser(req,res){
        const id = req.params.id
        const users = await db.query('delete FROM pokemon where id = $1',[id])
        res.json(users.rows)
    }

}

module.exports = new UserController()