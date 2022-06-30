const { runCommands,run } = require("./runCommands");

exports.determineMasterBranch = async()=>{
  const response = await run(`git branch`,true)
  if(response.includes(`main`)) return 'main'
  if(response.includes(`master`)) return `master`
  throw new Error('Neither master nor main branch found')
}