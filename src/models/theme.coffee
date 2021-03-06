restful = require "node-restful"
mongoose = restful.mongoose
ObjectId = mongoose.Schema.Types.ObjectId

module.exports = ThemeSchema = restful.model("theme", mongoose.Schema(
  title: {
    type: "string"
    match: /\S/
    required: true
  }
  description: "string"
  notes: "string"
  owner: {
    type: ObjectId
    ref: 'user'
  }
  created_at: {
    type: "date"
    default: Date.now
  }
  last_updated: {
    type: Date
  }
  is_finished: "boolean"
)).methods [
  "get"
  "post"
  "put"
  "delete"
]