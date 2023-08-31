<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4942)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Relative height (100%) in DevExpress ASP.NET and DevExtreme controls
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4942/)**
<!-- run online end -->

DevExpress ASP.NET controls do not implement full screen feature (except for [ASPxSplitter](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxSplitter.FullscreenMode)). When a control’s height is set to 100%, it works incorrectly or does not work at all.
The cause of this issue is technological limitation. To set a relative height to an HTML element, **all** its parent HTML elements must have the `height` style initialized. Note that `<html>`, `<body>` and `<form>` tags are also parent containers and their height should also be initialized (directly or in CSS rules).

```
html, body, form
{
  height: 100%;
  margin: 0;
  padding: 0;
  overflow: hidden;
}
```
This behavior can change depending on the browser. This example illustrates the issue and its solution. You can test it in different browsers and observe the results.

## Files to Review

* [CorrectSolution.html](./CS/WebSite/CorrectSolution.html) (VB: [CorrectSolution.html](./VB/WebSite/CorrectSolution.html))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [InvalidCase1.html](./CS/WebSite/InvalidCase1.html) (VB: [InvalidCase1.html](./VB/WebSite/InvalidCase1.html))
* [InvalidCase2.html](./CS/WebSite/InvalidCase2.html) (VB: [InvalidCase2.html](./VB/WebSite/InvalidCase2.html))
* [InvalidCase3.html](./CS/WebSite/InvalidCase3.html) (VB: [InvalidCase3.html](./VB/WebSite/InvalidCase3.html))
* [InvalidCase4.html](./CS/WebSite/InvalidCase4.html) (VB: [InvalidCase4.html](./VB/WebSite/InvalidCase4.html))

## More Examples

* [Grid View for ASP.NET Web Forms - How to display the Grid View in the full screen mode (100% width and height)](https://github.com/DevExpress-Examples/aspxgridview-full-screen-mode)
