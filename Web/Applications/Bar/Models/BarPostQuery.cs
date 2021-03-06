﻿//<TunynetCopyright>
//--------------------------------------------------------------
//<copyright>拓宇网络科技有限公司 2005-2012</copyright>
//<version>V0.5</verion>
//<createdate>2012-08-23</createdate>
//<author>zhengw</author>
//<email>zhengw@tunynet.com</email>
//<log date="2012-08-23" version="0.5">创建</log>
//--------------------------------------------------------------
//</TunynetCopyright>

using System;
using PetaPoco;
using Tunynet;
using Tunynet.Caching;
using Tunynet.Common;

namespace Spacebuilder.Bar
{

    /// <summary>
    /// 封装管理回帖时用于查询回帖的条件
    /// </summary>
    public class BarPostQuery
    {
        /// <summary>
        /// 标题关键字
        /// </summary>
        public string PostKeyword { get; set; }

        /// <summary>
        /// 帖吧Id
        /// </summary>
        public long? SectionId { get; set; }

        /// <summary>
        /// 作者用户Id
        /// </summary>
        public long? UserId { get; set; }

        /// <summary>
        /// 开始日期（用于发布时间条件）
        /// </summary>
        public DateTime? StartDate { get; set; }

        /// <summary>
        /// 结束日期（用于发布时间条件）
        /// </summary>
        public DateTime? EndDate { get; set; }

        /// <summary>
        /// 审核状态
        /// </summary>
        public AuditStatus? AuditStatus { get; set; }

    }
}
