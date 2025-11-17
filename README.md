🎓 EDUCO AgentForce AI Assistant
An Intelligent Apex-Powered University Stream & Fee Assistant

📌 Overview

This project showcases how Salesforce AgentForce and Apex Invocable Methods can be combined to build an interactive AI assistant for EDUCO – a University Management System.

The AI Agent can instantly answer student queries such as:

“What courses does EDUCO offer?”

“What is the GST of Graduation for EDUCO?”

“How much registration fee do I need to pay?”

It uses a custom Apex class (EDUCOFeeCalculator) to return fee and GST data for all streams mentioned in the EDUCO university brochure.

Features
🎯 AI-Powered Query Handling

Provides complete list of available EDUCO Streams
(Diploma, Certificate, Graduation, PG Diploma, Post Graduation, Doctorate)

Responds to natural-language fee-related queries

Uses Apex-based data instead of Data Cloud (so it works in Dev/Sandbox orgs)

📚 Data Library Integration

This project also uses Salesforce Data Library to provide EDUCO’s static university information.

I uploaded the official EDUCO course PDF to the Data Library, allowing the AgentForce assistant to:

Read and understand EDUCO’s stream names

Access descriptions and structure from the PDF

Combine Data Library knowledge + Apex logic

Respond more accurately to student queries

Apex handles dynamic fee calculations.
Data Library provides long-form educational content for better grounding.

💰 Fee & GST Retrieval

Returns fixed Registration Fee: ₹1500

Returns GST % for each Stream using Apex logic

Handles invalid inputs gracefully

🤖 AgentForce Integration

Apex Invocable Method exposed as an Agent Tool

Agent automatically detects when to call the tool


Fully customizable Topics & Instructions

