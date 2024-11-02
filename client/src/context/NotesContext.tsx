import {createContext,ReactNode,useContext,useEffect,useState} from 'react'
import { toast } from 'react-toastify'
import { AxiosClient } from '../constant'


export interface Note{
    documentId:string
    title:string
    description:string
    isComplete:boolean
}



export interface NotesContextType{
    notes:Note[],
    AddNote:(title:string,desc:string)=>void
    deleteTodo:(id:string)=>void
    updateTodo:(id:string)=>void
    viewTodo:(id:string)=>void

}

const NotesContext = createContext<NotesContextType>({
    notes:[],
    AddNote:()=>{},
    deleteTodo:()=>{},
    updateTodo:()=>{},
    viewTodo:()=>{}


})



export const useNotes=()=>{
    return useContext(NotesContext)
}

export const NotesProvider = ({children}:{children:ReactNode})=>{
    const [notes,setNotes]=useState<Note[]>([])

    const FetchAllNotes = async()=>{
        try {
            const response = await AxiosClient.get("/");
            const data = await response.data;
            // console.log(data);
            setNotes(data?.data)
            
        } catch (error:any) {
            toast.error(  error.response.data.error.message)

        }
    }

    const deleteTodo =async(id:string)=>{
        try {
               const response =  await AxiosClient.delete(`/${id}`)

            //    console.log(await(response.data));
            const data  = await response.data

            console.log({
                data
            });
            
            toast.success("Note Deleted :)")
               
             await   FetchAllNotes()
        } catch (error:any) {
            toast.error(  error.response.data.error.message)
            
        }
    }
    const updateTodo =async(id:string)=>{
        try {
               await AxiosClient.put(`/${id}`,{
                data:{
                    isComplete:true
                }
               })
  
       
               
             await   FetchAllNotes()
            toast.success("Note Updated :)")

        } catch (error:any) {
            toast.error(  error.response.data.error.message)
            
        }
    }

    const AddNote =async(title:string,desc:string)=>{
                try {
                            if(!title || !desc){
                                toast.warn("we Need Data to add Notes !:(")
                                return
                            }       
                            
                          
                       await AxiosClient.post('/',{
                            data:{
                                title,
                                description:desc,
                            }
                        })
 
                        await FetchAllNotes() 
                        toast.success("note Added  :)")
                                    

                        
                } catch (error:any) {
                    console.log(error);
                    
                            toast.error(  error.response.data.error.message)
                }
    }


    const viewTodo=async(id:string)=>{
            try {
                const response = await AxiosClient.get('/'+id)
                const data = await response.data;
                console.log("🚀 ~ viewTodo ~ data:", data) 
                

            } catch (error:any) {
                toast.error(  error.response.data.error.message)
                
            }
    }

    useEffect(()=>{
        FetchAllNotes()
    },[])

    return <NotesContext.Provider value={
        {
            notes,
            AddNote,
            deleteTodo,
            updateTodo,
            viewTodo
        }
    }>
        {children}
        </NotesContext.Provider>
}
