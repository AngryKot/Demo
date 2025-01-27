//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OOO_Condy.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Request
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Request()
        {
            this.Comment = new HashSet<Comment>();
        }
    
        public int RequestId { get; set; }
        public int RequestClient { get; set; }
        public System.DateTime RequestStartDate { get; set; }
        public int RequestTechType { get; set; }
        public string RequestTechModel { get; set; }
        public string RequestProblemDescription { get; set; }
        public int RequestStatus { get; set; }
        public Nullable<int> RequestMaster { get; set; }
        public Nullable<int> RequestDuration { get; set; }
        public string RequestParts { get; set; }
        public Nullable<int> RequestStage { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment> Comment { get; set; }
        public virtual Stage Stage { get; set; }
        public virtual Status Status { get; set; }
        public virtual TechType TechType { get; set; }
        public virtual User User { get; set; }
        public virtual User User1 { get; set; }
    }
}
