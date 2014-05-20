.class public Lcom/tencent/mm/modelfriend/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# static fields
.field private static bZd:Ljava/util/HashMap;


# instance fields
.field private crP:Lcom/tencent/mm/modelfriend/i;

.field private crQ:Lcom/tencent/mm/modelfriend/o;

.field private crR:Lcom/tencent/mm/modelfriend/y;

.field private crS:Lcom/tencent/mm/modelfriend/au;

.field private crT:Lcom/tencent/mm/modelfriend/aw;

.field private crU:Lcom/tencent/mm/modelfriend/af;

.field private crV:Lcom/tencent/mm/modelfriend/ad;

.field private crW:Lcom/tencent/mm/modelfriend/k;

.field private crX:Ljava/util/LinkedList;

.field private crY:Lcom/tencent/mm/modelfriend/j;

.field private crZ:Lcom/tencent/mm/modelfriend/l;

.field private csa:Lcom/tencent/mm/modelfriend/m;

.field private csb:Lcom/tencent/mm/sdk/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    sput-object v0, Lcom/tencent/mm/modelfriend/ax;->bZd:Ljava/util/HashMap;

    const-string v1, "ADDR_UPLOAD_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelfriend/ay;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/ay;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/tencent/mm/modelfriend/ax;->bZd:Ljava/util/HashMap;

    const-string v1, "FACE_BOOK_FIREND_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelfriend/az;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/az;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/tencent/mm/modelfriend/ax;->bZd:Ljava/util/HashMap;

    const-string v1, "FRIEND_EXT_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelfriend/ba;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/ba;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/tencent/mm/modelfriend/ax;->bZd:Ljava/util/HashMap;

    const-string v1, "QQ_GROUP_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelfriend/bb;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/bb;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/tencent/mm/modelfriend/ax;->bZd:Ljava/util/HashMap;

    const-string v1, "QQ_LIST_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelfriend/bc;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/bc;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/tencent/mm/modelfriend/ax;->bZd:Ljava/util/HashMap;

    const-string v1, "INVITEFRIENDOPEN_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelfriend/bd;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/bd;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/tencent/mm/modelfriend/ax;->bZd:Ljava/util/HashMap;

    const-string v1, "GOOGLE_FRIEND_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelfriend/be;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/be;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/tencent/mm/modelfriend/k;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/k;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ax;->crW:Lcom/tencent/mm/modelfriend/k;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ax;->crX:Ljava/util/LinkedList;

    .line 40
    new-instance v0, Lcom/tencent/mm/modelfriend/j;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/j;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ax;->crY:Lcom/tencent/mm/modelfriend/j;

    .line 41
    new-instance v0, Lcom/tencent/mm/modelfriend/l;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ax;->crZ:Lcom/tencent/mm/modelfriend/l;

    .line 42
    new-instance v0, Lcom/tencent/mm/modelfriend/m;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ax;->csa:Lcom/tencent/mm/modelfriend/m;

    .line 212
    new-instance v0, Lcom/tencent/mm/modelfriend/bf;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelfriend/bf;-><init>(Lcom/tencent/mm/modelfriend/ax;)V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ax;->csb:Lcom/tencent/mm/sdk/b/g;

    return-void
.end method

.method private static Ak()Lcom/tencent/mm/modelfriend/ax;
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/modelfriend/ax;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/ax;

    .line 46
    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/tencent/mm/modelfriend/ax;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/ax;-><init>()V

    .line 48
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/modelfriend/ax;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 50
    :cond_0
    return-object v0
.end method

.method public static Al()Lcom/tencent/mm/modelfriend/i;
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 57
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crP:Lcom/tencent/mm/modelfriend/i;

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelfriend/i;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelfriend/i;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v1, v0, Lcom/tencent/mm/modelfriend/ax;->crP:Lcom/tencent/mm/modelfriend/i;

    .line 60
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crP:Lcom/tencent/mm/modelfriend/i;

    return-object v0
.end method

.method public static Am()Lcom/tencent/mm/modelfriend/o;
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crQ:Lcom/tencent/mm/modelfriend/o;

    if-nez v0, :cond_1

    .line 68
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelfriend/o;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelfriend/o;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v1, v0, Lcom/tencent/mm/modelfriend/ax;->crQ:Lcom/tencent/mm/modelfriend/o;

    .line 70
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crQ:Lcom/tencent/mm/modelfriend/o;

    return-object v0
.end method

.method public static An()Lcom/tencent/mm/modelfriend/y;
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 77
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crR:Lcom/tencent/mm/modelfriend/y;

    if-nez v0, :cond_1

    .line 78
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelfriend/y;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelfriend/y;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v1, v0, Lcom/tencent/mm/modelfriend/ax;->crR:Lcom/tencent/mm/modelfriend/y;

    .line 80
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crR:Lcom/tencent/mm/modelfriend/y;

    return-object v0
.end method

.method public static Ao()Lcom/tencent/mm/modelfriend/au;
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 87
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crS:Lcom/tencent/mm/modelfriend/au;

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelfriend/au;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelfriend/au;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v1, v0, Lcom/tencent/mm/modelfriend/ax;->crS:Lcom/tencent/mm/modelfriend/au;

    .line 90
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crS:Lcom/tencent/mm/modelfriend/au;

    return-object v0
.end method

.method public static Ap()Lcom/tencent/mm/modelfriend/af;
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 97
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crU:Lcom/tencent/mm/modelfriend/af;

    if-nez v0, :cond_1

    .line 98
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelfriend/af;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelfriend/af;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v1, v0, Lcom/tencent/mm/modelfriend/ax;->crU:Lcom/tencent/mm/modelfriend/af;

    .line 100
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crU:Lcom/tencent/mm/modelfriend/af;

    return-object v0
.end method

.method public static Aq()Lcom/tencent/mm/modelfriend/aw;
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 107
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crT:Lcom/tencent/mm/modelfriend/aw;

    if-nez v0, :cond_1

    .line 108
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelfriend/aw;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelfriend/aw;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v1, v0, Lcom/tencent/mm/modelfriend/ax;->crT:Lcom/tencent/mm/modelfriend/aw;

    .line 110
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crT:Lcom/tencent/mm/modelfriend/aw;

    return-object v0
.end method

.method public static Ar()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 124
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crX:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static As()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 131
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mm/modelfriend/ax;->crX:Ljava/util/LinkedList;

    .line 132
    return-void
.end method

.method public static At()Lcom/tencent/mm/modelfriend/ad;
    .locals 3

    .prologue
    .line 250
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 253
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crV:Lcom/tencent/mm/modelfriend/ad;

    if-nez v0, :cond_1

    .line 254
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelfriend/ad;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelfriend/ad;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/modelfriend/ax;->crV:Lcom/tencent/mm/modelfriend/ad;

    .line 256
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ax;->crV:Lcom/tencent/mm/modelfriend/ad;

    return-object v0
.end method

.method public static c(Ljava/util/LinkedList;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 117
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Ak()Lcom/tencent/mm/modelfriend/ax;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/modelfriend/ax;->crX:Ljava/util/LinkedList;

    .line 118
    return-void
.end method


# virtual methods
.method public final N(Z)V
    .locals 3
    .parameter

    .prologue
    .line 235
    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/ax;->crW:Lcom/tencent/mm/modelfriend/k;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 237
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "SetLocalQQMobile"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->csb:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 238
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "AddFMessageCardClick"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->csb:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 240
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "BindQQ"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->crY:Lcom/tencent/mm/modelfriend/j;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 241
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "FMessageMobileFilter"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->crZ:Lcom/tencent/mm/modelfriend/l;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 242
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "FMsgGetName"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->csa:Lcom/tencent/mm/modelfriend/m;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 243
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 151
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 247
    return-void
.end method

.method public final qy()V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "SetLocalQQMobile"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->csb:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 137
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "AddFMessageCardClick"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->csb:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 139
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "BindQQ"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->crY:Lcom/tencent/mm/modelfriend/j;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 140
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "FMessageMobileFilter"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->crZ:Lcom/tencent/mm/modelfriend/l;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 141
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "FMsgGetName"

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/ax;->csa:Lcom/tencent/mm/modelfriend/m;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 143
    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->yA()V

    .line 144
    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/ax;->crW:Lcom/tencent/mm/modelfriend/k;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ax;->crX:Ljava/util/LinkedList;

    .line 146
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/tencent/mm/modelfriend/ax;->bZd:Ljava/util/HashMap;

    return-object v0
.end method
