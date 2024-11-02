import { MdClose } from "react-icons/md"
import { useNotes } from "../context/NotesContext"

 
const AllNotes = () => {

        const {notes ,deleteTodo,updateTodo,viewTodo} = useNotes()
  return (
    <> <div className="container  w-full xl:w-[86%] mx-auto py-10 flex flex-col gap-y-4">
    <div className="mb-3">
        <h1 className="text-4xl font-semibold">All Note ({notes.length??0}) </h1>
    </div>
                <div className="grid grid-cols-1 md:grid-cols-2  xl:grid-cols-3 gap-x-3 gap-y-3 items-center justify-center">
                        {
                            notes && notes.length> 0 && notes.map((cur,i)=>{
                                return <div key={i} className="w-full border-white border-2 p-4 shadow-2xl rounded-lg">
                                <div className="mb-3 flex justify-between items-center">
                                    <h1 className={`capitalize text-xl font-sans ${cur.isComplete?'line-through':''}`}>{cur.title}</h1>
                                {/* Todo: delete */}
                                            <button type="button" onClick={()=>deleteTodo(cur.documentId)} className="p-4 bg-gray-800 text-2xl rounded-full">
                                                <MdClose/>
                                            </button>
                                </div>
                                <div className="mb-3">
                                   {cur.description}
                                </div>
                               

                                <div className="mb-3 flex  gap-x-4 justify-end">
                                <button onClick={()=>viewTodo(cur.documentId)} className="px-4 py-2 rounded-lg bg-blue-600">View</button>
                                {!cur.isComplete &&    <button onClick={()=>updateTodo(cur.documentId)} className="px-4 py-2 rounded-lg bg-orange-600">complete</button>}
                                </div>
                            </div>
                            })
                        }
                </div>
                </div>
    </>
  )
}

export default AllNotes