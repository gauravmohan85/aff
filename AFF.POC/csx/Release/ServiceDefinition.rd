<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AFF.POC" generation="1" functional="0" release="0" Id="6e249b82-ae1c-4c9e-8e9c-870e8d201d42" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AFF.POCGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="AFF.WebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AFF.POC/AFF.POCGroup/LB:AFF.WebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="AFF.WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AFF.POC/AFF.POCGroup/MapAFF.WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="AFF.WebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AFF.POC/AFF.POCGroup/MapAFF.WebRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:AFF.WebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/AFF.POC/AFF.POCGroup/AFF.WebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapAFF.WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AFF.POC/AFF.POCGroup/AFF.WebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapAFF.WebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AFF.POC/AFF.POCGroup/AFF.WebRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="AFF.WebRole" generation="1" functional="0" release="0" software="C:\Users\gaurav-pc\source\repos\AFF.POC\AFF.POC\csx\Release\roles\AFF.WebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;AFF.WebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;AFF.WebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AFF.POC/AFF.POCGroup/AFF.WebRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AFF.POC/AFF.POCGroup/AFF.WebRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AFF.POC/AFF.POCGroup/AFF.WebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="AFF.WebRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="AFF.WebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="AFF.WebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="371fd99d-b3df-4bb9-ac77-43c1a8f07dc7" ref="Microsoft.RedDog.Contract\ServiceContract\AFF.POCContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="2a3caee3-a490-49b7-bc33-9c85acb44e4e" ref="Microsoft.RedDog.Contract\Interface\AFF.WebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/AFF.POC/AFF.POCGroup/AFF.WebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>