//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Book
    {
        public System.Guid Id { get; set; }
        public string SubName { get; set; }
        public Nullable<int> Page { get; set; }
        public string Image { get; set; }
        public string FileSize { get; set; }
        public string Description { get; set; }
        public Nullable<System.Guid> FileType { get; set; }
        public Nullable<System.Guid> Authors { get; set; }
        public string Tags { get; set; }
        public Nullable<System.Guid> Language { get; set; }
        public Nullable<System.Guid> Publisher { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.Guid> CreateUser { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<System.Guid> UpdateUser { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
    }
}
