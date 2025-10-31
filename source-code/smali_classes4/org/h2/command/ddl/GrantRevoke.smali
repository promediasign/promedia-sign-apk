.class public Lorg/h2/command/ddl/GrantRevoke;
.super Lorg/h2/command/ddl/DefineCommand;
.source "SourceFile"


# instance fields
.field private grantee:Lorg/h2/engine/RightOwner;

.field private operationType:I

.field private rightMask:I

.field private roleNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private schema:Lorg/h2/schema/Schema;

.field private final tables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/ddl/DefineCommand;-><init>(Lorg/h2/engine/Session;)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/command/ddl/GrantRevoke;->tables:Ljava/util/ArrayList;

    return-void
.end method

.method private grantRight()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->schema:Lorg/h2/schema/Schema;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/h2/command/ddl/GrantRevoke;->grantRight(Lorg/h2/engine/DbObject;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    invoke-direct {p0, v1}, Lorg/h2/command/ddl/GrantRevoke;->grantRight(Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private grantRight(Lorg/h2/engine/DbObject;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v1, p1}, Lorg/h2/engine/RightOwner;->getRightForObject(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Right;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v3

    new-instance v7, Lorg/h2/engine/Right;

    iget-object v4, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    iget v5, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    move-object v1, v7

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/h2/engine/Right;-><init>(Lorg/h2/engine/Database;ILorg/h2/engine/RightOwner;ILorg/h2/engine/DbObject;)V

    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v1, p1, v7}, Lorg/h2/engine/RightOwner;->grantRight(Lorg/h2/engine/DbObject;Lorg/h2/engine/Right;)V

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1, v7}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/h2/engine/Right;->getRightMask()I

    move-result p1

    iget v2, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    or-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lorg/h2/engine/Right;->setRightMask(I)V

    iget-object p1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_0
    return-void
.end method

.method private grantRole(Lorg/h2/engine/Role;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    if-eq p1, v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/h2/engine/RightOwner;->isRoleGranted(Lorg/h2/engine/Role;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    instance-of v1, v0, Lorg/h2/engine/Role;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/h2/engine/Role;

    invoke-virtual {p1, v0}, Lorg/h2/engine/RightOwner;->isRoleGranted(Lorg/h2/engine/Role;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x15fda

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getObjectId()I

    move-result v1

    new-instance v2, Lorg/h2/engine/Right;

    iget-object v3, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-direct {v2, v0, v1, v3, p1}, Lorg/h2/engine/Right;-><init>(Lorg/h2/engine/Database;ILorg/h2/engine/RightOwner;Lorg/h2/engine/Role;)V

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v0, p1, v2}, Lorg/h2/engine/RightOwner;->grantRole(Lorg/h2/engine/Role;Lorg/h2/engine/Right;)V

    return-void
.end method

.method private revokeRight()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->schema:Lorg/h2/schema/Schema;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/h2/command/ddl/GrantRevoke;->revokeRight(Lorg/h2/engine/DbObject;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    invoke-direct {p0, v1}, Lorg/h2/command/ddl/GrantRevoke;->revokeRight(Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private revokeRight(Lorg/h2/engine/DbObject;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v0, p1}, Lorg/h2/engine/RightOwner;->getRightForObject(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Right;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Right;->getRightMask()I

    move-result v0

    iget v1, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    not-int v1, v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0, p1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/h2/engine/Right;->setRightMask(I)V

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0, p1}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :goto_0
    return-void
.end method

.method private revokeRole(Lorg/h2/engine/Role;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    invoke-virtual {v0, p1}, Lorg/h2/engine/RightOwner;->getRightForRole(Lorg/h2/engine/Role;)Lorg/h2/engine/Right;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, p1}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    return-void
.end method


# virtual methods
.method public addRight(I)V
    .locals 1

    iget v0, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    return-void
.end method

.method public addRoleName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTable(Lorg/h2/table/Table;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    return v0
.end method

.method public isRightMode()Z
    .locals 1

    iget v0, p0, Lorg/h2/command/ddl/GrantRevoke;->rightMask:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRoleMode()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setGranteeName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->findRole(Ljava/lang/String;)Lorg/h2/engine/Role;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/ddl/GrantRevoke;->grantee:Lorg/h2/engine/RightOwner;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fd7

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setOperationType(I)V
    .locals 0

    iput p1, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    return-void
.end method

.method public setSchema(Lorg/h2/schema/Schema;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/ddl/GrantRevoke;->schema:Lorg/h2/schema/Schema;

    return-void
.end method

.method public update()I
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/h2/engine/User;->checkAdmin()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/h2/command/ddl/GrantRevoke;->roleNames:Ljava/util/ArrayList;

    .line 23
    .line 24
    const-string v2, "type="

    .line 25
    .line 26
    const/16 v3, 0x32

    .line 27
    .line 28
    const/16 v4, 0x31

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_6

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Lorg/h2/engine/Database;->findRole(Ljava/lang/String;)Lorg/h2/engine/Role;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    iget v5, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    .line 55
    .line 56
    if-ne v5, v4, :cond_0

    .line 57
    .line 58
    invoke-direct {p0, v6}, Lorg/h2/command/ddl/GrantRevoke;->grantRole(Lorg/h2/engine/Role;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    if-ne v5, v3, :cond_1

    .line 63
    .line 64
    invoke-direct {p0, v6}, Lorg/h2/command/ddl/GrantRevoke;->revokeRole(Lorg/h2/engine/Role;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v6, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    .line 74
    .line 75
    invoke-static {v5, v6}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const v0, 0x15fd6

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v5}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    throw v0

    .line 87
    :cond_3
    iget v0, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    .line 88
    .line 89
    if-ne v0, v4, :cond_4

    .line 90
    .line 91
    invoke-direct {p0}, Lorg/h2/command/ddl/GrantRevoke;->grantRight()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    if-ne v0, v3, :cond_5

    .line 96
    .line 97
    invoke-direct {p0}, Lorg/h2/command/ddl/GrantRevoke;->revokeRight()V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v1, p0, Lorg/h2/command/ddl/GrantRevoke;->operationType:I

    .line 107
    .line 108
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 109
    .line 110
    .line 111
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 112
    return v0
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
.end method
