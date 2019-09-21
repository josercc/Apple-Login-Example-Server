//
//  IndexHTML.swift
//  App
//
//  Created by 张行 on 2019/9/21.
//

let IndexHTML = """
<html>
    <head>

    </head>

    <body>
    <section class="layout" style="padding: 10px; line-height: 1.6; word-spacing: 0px; word-break: break-word; word-wrap: break-word; text-align: left; font-family: Optima-Regular, Optima, PingFangSC-light, PingFangTC-light, 'PingFang SC', Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: 15px; letter-spacing: 0.05em; color: #595959;"><h1 style="margin-top: 40px; margin-bottom: 20px; font-size: 28px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>Apple Login 测试服务器接口</span></h1>
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; line-height: 26px; color: black; margin: 1em 4px;">😘当前的测试服务器还在研发中，接口按照最后说明为准</p>
<h2 style="margin-top: 40px; margin-bottom: 20px; bmin-height: 32px; line-height: 32px; border-bottom: solid 1px #000000; color: #35b378; display: inline-block; border-bottom-width: 0px; border-bottom-style: solid; border-color: #35b378; padding-top: 5px; padding-right: 0.5em; padding-left: 0.5em; font-size: 23px; margin: 1em 0 0rem 0; padding: 0.5em 0; text-align: leftt; font-weight: bold;"><span>注册</span></h2>
<blockquote style="display: block; font-size: 0.9em; overflow: auto; overflow-scrolling: touch; padding-top: 10px; padding-bottom: 10px; padding-left: 20px; padding-right: 10px; margin-bottom: 20px; margin-top: 20px; margin: 10px 5px; border-left: 3px solid #35b378; border-right: 0px solid #35b378; color: #616161; quotes: none; background: #FBF9FD;">
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; margin: 0px; color: black; line-height: 26px;"><code style="font-size: 14px; word-wrap: break-word; padding: 2px 4px; border-radius: 4px; margin: 0 2px; background-color: rgba(27,31,35,.05); font-family: Operator Mono, Consolas, Monaco, Menlo, monospace; word-break: break-all; color: #35b378;">user/register</code></p>
</blockquote>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>请求参数</span></h3>
<table style="display: table; text-align: left;">
<thead>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">字段名称</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">类型</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">是否必填</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">含义</th>
</tr>
</thead>
<tbody style="border: 0;">
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>userName</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">用户名</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>passWord</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">密码</td>
</tr>
</tbody>
</table>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>返回参数（其他接口返回一样）</span></h3>
<table style="display: table; text-align: left;">
<thead>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">字段名称</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">类型</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">是否一定返回</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">含义</th>
</tr>
</thead>
<tbody style="border: 0;">
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>statue</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>Int</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">状态吗</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>message</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">返回信息</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>data</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>User</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">否</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">用户信息</td>
</tr>
</tbody>
</table>
<h4 style="margin-top: 40px; margin-bottom: 20px; font-weight: bold; color: black; font-size: 18px;"><span>User</span></h4>
<table style="display: table; text-align: left;">
<thead>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">字段名称</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">类型</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">是否一定返回</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">含义</th>
</tr>
</thead>
<tbody style="border: 0;">
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>id</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>Int</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">数据库的唯一 ID</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>userName</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">用户名</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>passWord</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">密码</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>appleID</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">否</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权的 ID</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>name</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">否</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">用户的昵称</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>appleEmail</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">否</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权登录的邮箱</td>
</tr>
</tbody>
</table>
<h2 style="margin-top: 40px; margin-bottom: 20px; bmin-height: 32px; line-height: 32px; border-bottom: solid 1px #000000; color: #35b378; display: inline-block; border-bottom-width: 0px; border-bottom-style: solid; border-color: #35b378; padding-top: 5px; padding-right: 0.5em; padding-left: 0.5em; font-size: 23px; margin: 1em 0 0rem 0; padding: 0.5em 0; text-align: leftt; font-weight: bold;"><span>登录</span></h2>
<blockquote style="display: block; font-size: 0.9em; overflow: auto; overflow-scrolling: touch; padding-top: 10px; padding-bottom: 10px; padding-left: 20px; padding-right: 10px; margin-bottom: 20px; margin-top: 20px; margin: 10px 5px; border-left: 3px solid #35b378; border-right: 0px solid #35b378; color: #616161; quotes: none; background: #FBF9FD;">
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; margin: 0px; color: black; line-height: 26px;"><code style="font-size: 14px; word-wrap: break-word; padding: 2px 4px; border-radius: 4px; margin: 0 2px; background-color: rgba(27,31,35,.05); font-family: Operator Mono, Consolas, Monaco, Menlo, monospace; word-break: break-all; color: #35b378;">user/login</code></p>
</blockquote>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>请求参数</span></h3>
<table style="display: table; text-align: left;">
<thead>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">字段名称</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">类型</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">是否必填</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">含义</th>
</tr>
</thead>
<tbody style="border: 0;">
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>userName</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">用户名</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>passWord</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">密码</td>
</tr>
</tbody>
</table>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>返回参数</span></h3>
<blockquote style="display: block; font-size: 0.9em; overflow: auto; overflow-scrolling: touch; padding-top: 10px; padding-bottom: 10px; padding-left: 20px; padding-right: 10px; margin-bottom: 20px; margin-top: 20px; margin: 10px 5px; border-left: 3px solid #35b378; border-right: 0px solid #35b378; color: #616161; quotes: none; background: #FBF9FD;">
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; margin: 0px; color: black; line-height: 26px;">参考注册接口</p>
</blockquote>
<h2 style="margin-top: 40px; margin-bottom: 20px; bmin-height: 32px; line-height: 32px; border-bottom: solid 1px #000000; color: #35b378; display: inline-block; border-bottom-width: 0px; border-bottom-style: solid; border-color: #35b378; padding-top: 5px; padding-right: 0.5em; padding-left: 0.5em; font-size: 23px; margin: 1em 0 0rem 0; padding: 0.5em 0; text-align: leftt; font-weight: bold;"><span>老用户绑定苹果登录</span></h2>
<blockquote style="display: block; font-size: 0.9em; overflow: auto; overflow-scrolling: touch; padding-top: 10px; padding-bottom: 10px; padding-left: 20px; padding-right: 10px; margin-bottom: 20px; margin-top: 20px; margin: 10px 5px; border-left: 3px solid #35b378; border-right: 0px solid #35b378; color: #616161; quotes: none; background: #FBF9FD;">
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; margin: 0px; color: black; line-height: 26px;"><code style="font-size: 14px; word-wrap: break-word; padding: 2px 4px; border-radius: 4px; margin: 0 2px; background-color: rgba(27,31,35,.05); font-family: Operator Mono, Consolas, Monaco, Menlo, monospace; word-break: break-all; color: #35b378;">user/bindAppleID</code></p>
</blockquote>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>请求参数</span></h3>
<table style="display: table; text-align: left;">
<thead>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">字段名称</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">类型</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">是否必填</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">含义</th>
</tr>
</thead>
<tbody style="border: 0;">
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>appleId</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权的 <code>ID</code></td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>name</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权的用户名称</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>appleEmail</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权的邮箱</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>identityToken</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权的临时 <code>Token</code></td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>authCode</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权码</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>userID</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>Int</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">用户数据库 <code>ID</code></td>
</tr>
</tbody>
</table>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>返回参数</span></h3>
<blockquote style="display: block; font-size: 0.9em; overflow: auto; overflow-scrolling: touch; padding-top: 10px; padding-bottom: 10px; padding-left: 20px; padding-right: 10px; margin-bottom: 20px; margin-top: 20px; margin: 10px 5px; border-left: 3px solid #35b378; border-right: 0px solid #35b378; color: #616161; quotes: none; background: #FBF9FD;">
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; margin: 0px; color: black; line-height: 26px;">参考注册接口</p>
</blockquote>
<h2 style="margin-top: 40px; margin-bottom: 20px; bmin-height: 32px; line-height: 32px; border-bottom: solid 1px #000000; color: #35b378; display: inline-block; border-bottom-width: 0px; border-bottom-style: solid; border-color: #35b378; padding-top: 5px; padding-right: 0.5em; padding-left: 0.5em; font-size: 23px; margin: 1em 0 0rem 0; padding: 0.5em 0; text-align: leftt; font-weight: bold;"><span>用户解绑苹果登录</span></h2>
<blockquote style="display: block; font-size: 0.9em; overflow: auto; overflow-scrolling: touch; padding-top: 10px; padding-bottom: 10px; padding-left: 20px; padding-right: 10px; margin-bottom: 20px; margin-top: 20px; margin: 10px 5px; border-left: 3px solid #35b378; border-right: 0px solid #35b378; color: #616161; quotes: none; background: #FBF9FD;">
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; margin: 0px; color: black; line-height: 26px;"><code style="font-size: 14px; word-wrap: break-word; padding: 2px 4px; border-radius: 4px; margin: 0 2px; background-color: rgba(27,31,35,.05); font-family: Operator Mono, Consolas, Monaco, Menlo, monospace; word-break: break-all; color: #35b378;">user/cancelBindAppleID/${userID}</code></p>
</blockquote>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>请求参数</span></h3>
<table style="display: table; text-align: left;">
<thead>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">字段名称</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">类型</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">是否必填</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">含义</th>
</tr>
</thead>
<tbody style="border: 0;">
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>userID</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>Int</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">用户的数据库 <code>ID</code></td>
</tr>
</tbody>
</table>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>返回参数</span></h3>
<blockquote style="display: block; font-size: 0.9em; overflow: auto; overflow-scrolling: touch; padding-top: 10px; padding-bottom: 10px; padding-left: 20px; padding-right: 10px; margin-bottom: 20px; margin-top: 20px; margin: 10px 5px; border-left: 3px solid #35b378; border-right: 0px solid #35b378; color: #616161; quotes: none; background: #FBF9FD;">
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; margin: 0px; color: black; line-height: 26px;">参考注册接口</p>
</blockquote>
<h2 style="margin-top: 40px; margin-bottom: 20px; bmin-height: 32px; line-height: 32px; border-bottom: solid 1px #000000; color: #35b378; display: inline-block; border-bottom-width: 0px; border-bottom-style: solid; border-color: #35b378; padding-top: 5px; padding-right: 0.5em; padding-left: 0.5em; font-size: 23px; margin: 1em 0 0rem 0; padding: 0.5em 0; text-align: leftt; font-weight: bold;"><span>苹果授权注册登录</span></h2>
<blockquote style="display: block; font-size: 0.9em; overflow: auto; overflow-scrolling: touch; padding-top: 10px; padding-bottom: 10px; padding-left: 20px; padding-right: 10px; margin-bottom: 20px; margin-top: 20px; margin: 10px 5px; border-left: 3px solid #35b378; border-right: 0px solid #35b378; color: #616161; quotes: none; background: #FBF9FD;">
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; margin: 0px; color: black; line-height: 26px;"><code style="font-size: 14px; word-wrap: break-word; padding: 2px 4px; border-radius: 4px; margin: 0 2px; background-color: rgba(27,31,35,.05); font-family: Operator Mono, Consolas, Monaco, Menlo, monospace; word-break: break-all; color: #35b378;">user/loginWithAppleID</code></p>
</blockquote>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>请求参数</span></h3>
<table style="display: table; text-align: left;">
<thead>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">字段名称</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">类型</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">是否必填</th>
<th style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left; font-weight: bold; background-color: #f0f0f0; color: #35b378;">含义</th>
</tr>
</thead>
<tbody style="border: 0;">
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>appleId</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权的 <code>ID</code></td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>name</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权的用户名称</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>appleEmail</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权的邮箱</td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: #F8F8F8;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>identityToken</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权的临时 <code>Token</code></td>
</tr>
<tr style="border: 0; border-top: 1px solid #ccc; background-color: white;">
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>authCode</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;"><code>String</code></td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">是</td>
<td style="font-size: 16px; border: 1px solid #ccc; padding: 5px 10px; text-align: left;">苹果授权码</td>
</tr>
</tbody>
</table>
<h3 style="margin-top: 40px; margin-bottom: 20px; font-size: 20px; margin: 1.2em 0 1em; padding: 0; font-weight: bold; color: #35b378;"><span>返回参数</span></h3>
<blockquote style="display: block; font-size: 0.9em; overflow: auto; overflow-scrolling: touch; padding-top: 10px; padding-bottom: 10px; padding-left: 20px; padding-right: 10px; margin-bottom: 20px; margin-top: 20px; margin: 10px 5px; border-left: 3px solid #35b378; border-right: 0px solid #35b378; color: #616161; quotes: none; background: #FBF9FD;">
<p style="font-size: 16px; padding-top: 8px; padding-bottom: 8px; margin: 0px; color: black; line-height: 26px;">参考注册接口</p>
</blockquote>
</section>
    </body>
</html>
"""
