exports.downloadFile = (req, res, next) => {
    const file = `./${req.query.path}`;
    res.download(file); // Set disposition and send it.
};