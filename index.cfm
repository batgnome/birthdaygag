<cfset nowStr = dateTimeFormat(now(),"yyyy-mm-dd HH:nn:ss")>
<cfoutput>
    <!DOCTYPE html>
    <html>
    <head>
    <title>Live Time</title>
    <script>
        function updateTime() {
            const now = new Date();
            document.getElementById("time").textContent = now.toLocaleTimeString();
        }
        setInterval(updateTime, 1000); // Update every 1 second
        window.onload = updateTime; // Initialize immediately
    </script>
    </head>
    <body>
        <h2>Current Time:</h2>
        <div id="time"></div>

        <p>Server time when page loaded: #dateFormat(now(), "mm/dd/yyyy")# #timeFormat(now(), "hh:mm:ss tt")#</p>
    </body>
    </html>
</cfoutput>
