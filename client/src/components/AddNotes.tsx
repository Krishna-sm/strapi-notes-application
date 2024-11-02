import { ChangeEvent, useState } from "react"
import { useNotes } from "../context/NotesContext"

 
const AddNotes = () => {


const {AddNote} = useNotes()


const [state,setState] = useState({
    title:'',
    desc:''
})
const OnChnageHandler =(e:ChangeEvent<HTMLInputElement | HTMLTextAreaElement>)=>{
    setState({
        ...state,
        [e.target.name]:e.target.value
    })
}

const OnSubmitHandler =async(e:any)=>{
    e.preventDefault()
  await  AddNote(state.title,state.desc)
    setState({
        title:'',
        desc:''
    })
}

  return (
    <>      
        <div className="container  w-full xl:w-[46%] mx-auto py-10 flex flex-col gap-y-4">
            <div className="mb-3">
                <h1 className="text-4xl font-semibold">Add Note</h1>
            </div>
            <form onSubmit={OnSubmitHandler} className="form">
                        <div className="mb-3">
                            <label htmlFor="title">Title</label>
                            <input value={state.title} onChange={OnChnageHandler} type="text" className="w-full py-2 px-3 outline-none rounded-md bg-transparent border-white border-2" placeholder='Enter Note title' name='title' id='title' />
                        </div>
                        <div className="mb-3">
                            <label htmlFor="desc">Description</label>
                            <textarea value={state.desc}  onChange={OnChnageHandler} rows={3} className="w-full py-2 px-3 outline-none rounded-md bg-transparent border-white border-2" placeholder='Enter Note desc' name='desc' id='desc' ></textarea>
                        </div>
                        <div className="mb-3">
                            <button type="submit" className="bg-purple-700 w-full inline-flex items-center justify-center  py-3 px-3 rounded-md shadow-2xl">Add Note</button>
                            </div>
            </form>
        </div>
    </>
  )
}

export default AddNotes