<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMasterPage.master" AutoEventWireup="true" CodeFile="ResumeTips.aspx.cs" Inherits="ResumeTips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style1" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="btnlinkinterview" runat="server" 
                    PostBackUrl="~/InterviewTips.aspx">Back To InterView Tips</asp:LinkButton>
                                            </td>
        </tr>
        <tr>
            <td>
                <u><b style="font-size: x-large; color: #66CCFF">ResumeTips</b></u></td>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <font size-"X-Large" family="Arial"><b>Career summary</b><br /></font>
                    Many hiring managers say they are searching for candidates who offer more than technical
                    credentials. Soft skills such as interpersonal communications, ability to work collaboratively
                    and commitment to achieving corporate goals are just as desirable. In other words,
                    your resume needs a personality. The reader shouldn't only be impressed by your
                    technical qualifications, but should find you to be likeable and well suited for
                    the team. You can highlight some of these skills in a Career Summary section.
                            <br><br>  <b>         Focus on results<br /></b>
                    Candidates usually make one of two critical errors on their resumes -- either the
                    document is excessively long with excruciating detail on every assignment ever completed,
                    or too short with hardly any descriptions at all. There needs to be some middle
                    ground -- the resume should be succinct yet effectively showcase your achievements.
                   <br><br> <b>What to include<br /></b>
                    For each position held, give a brief synopsis of the scope of your responsibility.
                    Then show how your performance benefited the company. Give examples of how past
                    initiatives led to positive outcomes such as enhanced efficiency, faster time-to-market,
                    monetary savings, etc. Accomplishments are most powerful when they are measurable,
                    so include actual performance figures whenever possible. Focus on your most impressive
                    technical projects/accomplishments. What types of challenges did you face? What
                    did you do to overcome the challenges? How did your performance improve the organization's
                    bottom line? <br><br> For contract work, provide a bulleted list of your top projects, indicating the
                    company (or type of company if confidential), reason for hiring you, scope of your
                    project, your specific approach to the project, challenges/obstacles faced, work
                    performed and benefits to the company.<br><br><strong>If you are new to the field and concerned about a lack of experience, consider
                        offering free or low-cost technical services to charitable organisations, friends,
                        family or local businesses. This allows you to hone your craft and show related
                        work or volunteer experience on your resume. Also, pursue as much training as possible
                        to get up to speed. Entry-level candidates should focus on their potential in the
                        field, ability to quickly learn challenging concepts and motivation to succeed in
                        the industry.</strong><br><br>
                        <span class="style27"><b>Keywords<br /></b>
                        The best keywords for your resume depend on your job target and experience. Specific
                        programs and applications are often used as keywords, which is another reason why
                        a Technical Summary is a good idea. To determine the best keywords for your industry,
                        use SeekJOBS's Search Jobs feature to find jobs that interest you. Examine the job
                        descriptions and see which credentials and skills are used frequently -- these are
                        potential keywords that should be incorporated into your resume.</span><span class="style27"></span>
                    </td>
        </tr>
    </table>
</asp:Content>

