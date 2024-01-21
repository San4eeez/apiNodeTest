const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const userRouter = require('./routes/user.routes');

const PORT = process.env.PORT || 8080;
const app = express();

app.use(cors());
app.use(helmet());
app.use(express.json());

app.use((req, res, next) => {
    res.setHeader('Cross-Origin-Resource-Policy', 'cross-origin');
    next();
});
app.use('/images', express.static('images'));
app.use('/api', userRouter);
app.listen(PORT, () => console.log(`Server started on port ${PORT}`));
