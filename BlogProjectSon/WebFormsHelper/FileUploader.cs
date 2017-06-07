using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace WebFormsHelper
{
    public static class FileUploader
    {
        public static string UploadSingleFile(HttpFileCollection hfc,ref string errorMessage,int maxFileSize,string[] contentTypes,string pathToUpload )
        {
            if (hfc.Count > 0)
            {
                
                    HttpPostedFile hpf = hfc[0];
                    //if (hpf.ContentLength > 307200) //300 kb
                    //{
                    //    s = "Boyut Fazla";
                    //}
                    if (hpf.ContentLength > maxFileSize)  //1mb
                    {
                        errorMessage = hpf.FileName + "Boyut Fazla";
                        return "";
                    }
                    if (!contentTypes.Contains(hpf.ContentType))  //hangi dosya olacağına MIME type ile karşılaştırısın
                    {
                        errorMessage = hpf.FileName + "Dosya tipi uygun değil";
                        return "";
                    }
                    string isim = Guid.NewGuid().ToString();
                    pathToUpload = pathToUpload + isim + hpf.FileName;
                    hpf.SaveAs(HttpContext.Current.Server.MapPath(pathToUpload));
                    return pathToUpload;
                
               
            }
            else
            {
                errorMessage = "Dosya seçilmedi";
                return "";
            }
        }
    }
}
