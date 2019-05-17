<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Gym_Event_Notification</fullName>
        <ccEmails>eliverans@gmail.com</ccEmails>
        <description>Gym Event Notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>smanetta310717@smanetta.com</recipient>
            <type>user</type>
        </recipients>
        <senderAddress>eliverani@salesforce.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>unfiled$public/NewUserEmail</template>
    </alerts>
    <rules>
        <fullName>PostInsertUpdate</fullName>
        <actions>
            <name>Gym_Event_Notification</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>GymEvent__c.Type__c</field>
            <operation>equals</operation>
            <value>Swimming</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
