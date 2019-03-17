module.exports = function (req, res, next) {
  res.locals.seo = {
    title: 'Combat CRM',
    keywords: 'crm',
    description: 'combat-crm'
  }

  next();
}