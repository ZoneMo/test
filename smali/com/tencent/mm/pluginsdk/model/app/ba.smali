.class public Lcom/tencent/mm/pluginsdk/model/app/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# static fields
.field private static bZd:Ljava/util/HashMap;


# instance fields
.field private cLv:Lcom/tencent/mm/pluginsdk/model/app/o;

.field private cLw:Lcom/tencent/mm/pluginsdk/model/app/b;

.field private fhU:Lcom/tencent/mm/pluginsdk/model/app/h;

.field private fhV:Lcom/tencent/mm/pluginsdk/model/app/m;

.field private fhW:Lcom/tencent/mm/pluginsdk/model/app/r;

.field private fhX:Lcom/tencent/mm/pluginsdk/model/app/aw;

.field private fhY:Lcom/tencent/mm/pluginsdk/model/app/p;

.field private fhZ:Lcom/tencent/mm/pluginsdk/model/a;

.field private fia:Lcom/tencent/mm/pluginsdk/model/app/t;

.field private fib:Lcom/tencent/mm/pluginsdk/model/app/c;

.field private fic:Lcom/tencent/mm/sdk/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    sput-object v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->bZd:Ljava/util/HashMap;

    const-string v1, "APPATTACHINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/pluginsdk/model/app/bd;

    invoke-direct {v2}, Lcom/tencent/mm/pluginsdk/model/app/bd;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->bZd:Ljava/util/HashMap;

    const-string v1, "APPINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/pluginsdk/model/app/be;

    invoke-direct {v2}, Lcom/tencent/mm/pluginsdk/model/app/be;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->bZd:Ljava/util/HashMap;

    const-string v1, "APPMESSAGE_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/pluginsdk/model/app/bf;

    invoke-direct {v2}, Lcom/tencent/mm/pluginsdk/model/app/bf;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->bZd:Ljava/util/HashMap;

    const-string v1, "PLUGININFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/pluginsdk/model/app/bg;

    invoke-direct {v2}, Lcom/tencent/mm/pluginsdk/model/app/bg;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhX:Lcom/tencent/mm/pluginsdk/model/app/aw;

    .line 41
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/p;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/model/app/p;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhY:Lcom/tencent/mm/pluginsdk/model/app/p;

    .line 42
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/model/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhZ:Lcom/tencent/mm/pluginsdk/model/a;

    .line 318
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/bh;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/model/app/bh;-><init>(Lcom/tencent/mm/pluginsdk/model/app/ba;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fic:Lcom/tencent/mm/sdk/b/g;

    .line 49
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/bb;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/model/app/bb;-><init>(Lcom/tencent/mm/pluginsdk/model/app/ba;)V

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/h;->a(Lcom/tencent/mm/pluginsdk/ah;)V

    .line 112
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/bc;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/model/app/bc;-><init>(Lcom/tencent/mm/pluginsdk/model/app/ba;)V

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ap;->a(Lcom/tencent/mm/pluginsdk/ui/chat/aq;)V

    .line 126
    return-void
.end method

.method public static HD()Lcom/tencent/mm/pluginsdk/model/app/r;
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 184
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhW:Lcom/tencent/mm/pluginsdk/model/app/r;

    if-nez v0, :cond_1

    .line 185
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/r;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/pluginsdk/model/app/r;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhW:Lcom/tencent/mm/pluginsdk/model/app/r;

    .line 187
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhW:Lcom/tencent/mm/pluginsdk/model/app/r;

    return-object v0
.end method

.method public static HE()Lcom/tencent/mm/pluginsdk/model/app/o;
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 174
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->cLv:Lcom/tencent/mm/pluginsdk/model/app/o;

    if-nez v0, :cond_1

    .line 175
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/o;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sP()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/pluginsdk/model/app/o;-><init>(Lcom/tencent/mm/sdk/e/af;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->cLv:Lcom/tencent/mm/pluginsdk/model/app/o;

    .line 177
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->cLv:Lcom/tencent/mm/pluginsdk/model/app/o;

    return-object v0
.end method

.method public static HF()Lcom/tencent/mm/pluginsdk/model/app/b;
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 144
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->cLw:Lcom/tencent/mm/pluginsdk/model/app/b;

    if-nez v0, :cond_1

    .line 145
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/b;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/pluginsdk/model/app/b;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->cLw:Lcom/tencent/mm/pluginsdk/model/app/b;

    .line 147
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->cLw:Lcom/tencent/mm/pluginsdk/model/app/b;

    return-object v0
.end method

.method public static PE()Lcom/tencent/mm/pluginsdk/model/app/c;
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 225
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fib:Lcom/tencent/mm/pluginsdk/model/app/c;

    if-nez v0, :cond_1

    .line 226
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/c;

    invoke-direct {v1}, Lcom/tencent/mm/pluginsdk/model/app/c;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fib:Lcom/tencent/mm/pluginsdk/model/app/c;

    .line 229
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fib:Lcom/tencent/mm/pluginsdk/model/app/c;

    return-object v0
.end method

.method private static aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/pluginsdk/model/app/ba;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/model/app/ba;

    .line 130
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/tencent/mm/pluginsdk/model/app/ba;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/model/app/ba;-><init>()V

    .line 133
    :cond_0
    return-object v0
.end method

.method public static aqg()Lcom/tencent/mm/pluginsdk/model/app/h;
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 154
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhU:Lcom/tencent/mm/pluginsdk/model/app/h;

    if-nez v0, :cond_1

    .line 155
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/h;

    invoke-direct {v1}, Lcom/tencent/mm/pluginsdk/model/app/h;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhU:Lcom/tencent/mm/pluginsdk/model/app/h;

    .line 157
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhU:Lcom/tencent/mm/pluginsdk/model/app/h;

    return-object v0
.end method

.method public static aqh()Lcom/tencent/mm/pluginsdk/model/app/m;
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 164
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhV:Lcom/tencent/mm/pluginsdk/model/app/m;

    if-nez v0, :cond_1

    .line 165
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/m;

    invoke-direct {v1}, Lcom/tencent/mm/pluginsdk/model/app/m;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhV:Lcom/tencent/mm/pluginsdk/model/app/m;

    .line 167
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhV:Lcom/tencent/mm/pluginsdk/model/app/m;

    return-object v0
.end method

.method public static aqi()Lcom/tencent/mm/pluginsdk/model/app/aw;
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 204
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhX:Lcom/tencent/mm/pluginsdk/model/app/aw;

    if-nez v0, :cond_1

    .line 205
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/aw;

    invoke-direct {v1}, Lcom/tencent/mm/pluginsdk/model/app/aw;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhX:Lcom/tencent/mm/pluginsdk/model/app/aw;

    .line 207
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhX:Lcom/tencent/mm/pluginsdk/model/app/aw;

    return-object v0
.end method

.method public static aqj()Lcom/tencent/mm/pluginsdk/model/app/t;
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 214
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fia:Lcom/tencent/mm/pluginsdk/model/app/t;

    if-nez v0, :cond_1

    .line 215
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/t;

    invoke-direct {v1}, Lcom/tencent/mm/pluginsdk/model/app/t;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fia:Lcom/tencent/mm/pluginsdk/model/app/t;

    .line 217
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fia:Lcom/tencent/mm/pluginsdk/model/app/t;

    return-object v0
.end method


# virtual methods
.method public final N(Z)V
    .locals 3
    .parameter

    .prologue
    .line 308
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqh()Lcom/tencent/mm/pluginsdk/model/app/m;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ar;->a(Lcom/tencent/mm/model/as;)V

    .line 309
    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhZ:Lcom/tencent/mm/pluginsdk/model/a;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 310
    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhY:Lcom/tencent/mm/pluginsdk/model/app/p;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 311
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "GetAppSetting"

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fic:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 312
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 297
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    return-void
.end method

.method public final qy()V
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhX:Lcom/tencent/mm/pluginsdk/model/app/aw;

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/aw;->stop()V

    .line 238
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhV:Lcom/tencent/mm/pluginsdk/model/app/m;

    .line 239
    if-eqz v0, :cond_1

    .line 240
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    const/16 v2, 0xe7

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/pluginsdk/model/app/c;->b(ILcom/tencent/mm/pluginsdk/model/app/x;)V

    .line 242
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhU:Lcom/tencent/mm/pluginsdk/model/app/h;

    .line 243
    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/h;->clear()V

    .line 246
    :cond_2
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqf()Lcom/tencent/mm/pluginsdk/model/app/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fia:Lcom/tencent/mm/pluginsdk/model/app/t;

    .line 247
    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/t;->stop()V

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fib:Lcom/tencent/mm/pluginsdk/model/app/c;

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fib:Lcom/tencent/mm/pluginsdk/model/app/c;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/c;->Oj()V

    .line 253
    :cond_4
    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhZ:Lcom/tencent/mm/pluginsdk/model/a;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 254
    const/16 v0, 0x31

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fhY:Lcom/tencent/mm/pluginsdk/model/app/p;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 255
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "GetAppSetting"

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/model/app/ba;->fic:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 256
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/tencent/mm/pluginsdk/model/app/ba;->bZd:Ljava/util/HashMap;

    return-object v0
.end method
