﻿@model $rootnamespace$.Models.OutcomeModel

@{
    ViewBag.Title = "Outcomes";
}

<h2>Outcomes Service</h2>

@using (Html.BeginForm())
{
    <div>Service URL: @Html.TextBoxFor(m => m.LisOutcomeServiceUrl, new {disabled = true, size = 100})</div>
    <div>LIS Result SourcedId: @Html.TextBoxFor(m => m.LisResultSourcedId, new {disabled = true, size = 100})</div>
    <div>Consumer Key: @Html.TextBoxFor(m => m.ConsumerKey, new {disabled = true, size = 100})</div>
    <div>Consumer Secret: @Html.TextBoxFor(m => m.ConsumerSecret, new {disabled = true, size = 100})</div>
    <p>
        Grade to send to the Tool Consumer: 
        @if (Model.Score.HasValue)
        {
            @Html.TextBoxFor(m => m.Score, new { Model.Score.Value })
        }
        else
        {
            @Html.TextBoxFor(m => m.Score, new { Value = "" })
        }
        @ViewBag.Message
    </p>
    <input type="submit" name="submit" value="Send Grade" />
    <input type="submit" name="submit" value="Read Grade" />
    <input type="submit" name="submit" value="Delete Grade" />
}
