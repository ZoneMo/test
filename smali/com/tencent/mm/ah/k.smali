.class public Lcom/tencent/mm/ah/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# static fields
.field private static bZd:Ljava/util/HashMap;


# instance fields
.field private cAk:Lcom/tencent/mm/ah/t;

.field private cAl:Lcom/tencent/mm/ah/f;

.field private cAm:Lcom/tencent/mm/ah/b;

.field private cAn:Lcom/tencent/mm/ah/c;

.field private cAo:Lcom/tencent/mm/ah/h;

.field private cAp:Lcom/tencent/mm/ah/j;

.field private cAq:Lcom/tencent/mm/sdk/b/g;

.field private cAr:Lcom/tencent/mm/sdk/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    sput-object v0, Lcom/tencent/mm/ah/k;->bZd:Ljava/util/HashMap;

    const-string v1, "LBSVERIFYMESSAGE_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ah/l;

    invoke-direct {v2}, Lcom/tencent/mm/ah/l;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/tencent/mm/ah/k;->bZd:Ljava/util/HashMap;

    const-string v1, "SHAKEVERIFYMESSAGE_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ah/m;

    invoke-direct {v2}, Lcom/tencent/mm/ah/m;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/tencent/mm/ah/k;->bZd:Ljava/util/HashMap;

    const-string v1, "VERIFY_CONTACT_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ah/n;

    invoke-direct {v2}, Lcom/tencent/mm/ah/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/tencent/mm/ah/k;->bZd:Ljava/util/HashMap;

    const-string v1, "FMESSAGE_MSGINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ah/o;

    invoke-direct {v2}, Lcom/tencent/mm/ah/o;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/tencent/mm/ah/k;->bZd:Ljava/util/HashMap;

    const-string v1, "FMESSAGE_CONVERSATION_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ah/p;

    invoke-direct {v2}, Lcom/tencent/mm/ah/p;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/tencent/mm/ah/t;

    invoke-direct {v0}, Lcom/tencent/mm/ah/t;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ah/k;->cAk:Lcom/tencent/mm/ah/t;

    .line 24
    new-instance v0, Lcom/tencent/mm/ah/c;

    invoke-direct {v0}, Lcom/tencent/mm/ah/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ah/k;->cAn:Lcom/tencent/mm/ah/c;

    .line 162
    new-instance v0, Lcom/tencent/mm/ah/q;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ah/q;-><init>(Lcom/tencent/mm/ah/k;)V

    iput-object v0, p0, Lcom/tencent/mm/ah/k;->cAq:Lcom/tencent/mm/sdk/b/g;

    .line 185
    new-instance v0, Lcom/tencent/mm/ah/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ah/r;-><init>(Lcom/tencent/mm/ah/k;)V

    iput-object v0, p0, Lcom/tencent/mm/ah/k;->cAr:Lcom/tencent/mm/sdk/b/g;

    return-void
.end method

.method public static DA()Lcom/tencent/mm/ah/j;
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ah/k;->cAp:Lcom/tencent/mm/ah/j;

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ah/j;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ah/j;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/ah/k;->cAp:Lcom/tencent/mm/ah/j;

    .line 89
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ah/k;->cAp:Lcom/tencent/mm/ah/j;

    return-object v0
.end method

.method private static Dw()Lcom/tencent/mm/ah/k;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/ah/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ah/k;

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/tencent/mm/ah/k;

    invoke-direct {v0}, Lcom/tencent/mm/ah/k;-><init>()V

    .line 34
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ah/k;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 36
    :cond_0
    return-object v0
.end method

.method public static Dx()Lcom/tencent/mm/ah/f;
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 53
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ah/k;->cAl:Lcom/tencent/mm/ah/f;

    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ah/f;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ah/f;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/ah/k;->cAl:Lcom/tencent/mm/ah/f;

    .line 56
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/ah/k;->cAl:Lcom/tencent/mm/ah/f;

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/sdk/platformtools/an;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ah/f;->a(Lcom/tencent/mm/sdk/e/al;Landroid/os/Looper;)V

    .line 59
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ah/k;->cAl:Lcom/tencent/mm/ah/f;

    return-object v0
.end method

.method public static Dy()Lcom/tencent/mm/ah/b;
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ah/k;->cAm:Lcom/tencent/mm/ah/b;

    if-nez v0, :cond_1

    .line 67
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ah/b;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ah/b;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/ah/k;->cAm:Lcom/tencent/mm/ah/b;

    .line 69
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ah/k;->cAm:Lcom/tencent/mm/ah/b;

    return-object v0
.end method

.method public static Dz()Lcom/tencent/mm/ah/h;
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 76
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ah/k;->cAo:Lcom/tencent/mm/ah/h;

    if-nez v0, :cond_1

    .line 77
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ah/h;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ah/h;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/ah/k;->cAo:Lcom/tencent/mm/ah/h;

    .line 79
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dw()Lcom/tencent/mm/ah/k;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ah/k;->cAo:Lcom/tencent/mm/ah/h;

    return-object v0
.end method


# virtual methods
.method public final N(Z)V
    .locals 3
    .parameter

    .prologue
    .line 151
    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ah/k;->cAk:Lcom/tencent/mm/ah/t;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 152
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ah/k;->cAn:Lcom/tencent/mm/ah/c;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 154
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "FMessageConversationStateOp"

    iget-object v2, p0, Lcom/tencent/mm/ah/k;->cAq:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 155
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "FMsgInfoQuery"

    iget-object v2, p0, Lcom/tencent/mm/ah/k;->cAr:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 156
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 147
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    return-void
.end method

.method public final qy()V
    .locals 3

    .prologue
    .line 94
    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ah/k;->cAk:Lcom/tencent/mm/ah/t;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 95
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ah/k;->cAn:Lcom/tencent/mm/ah/c;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "FMessageConversationStateOp"

    iget-object v2, p0, Lcom/tencent/mm/ah/k;->cAq:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 98
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "FMsgInfoQuery"

    iget-object v2, p0, Lcom/tencent/mm/ah/k;->cAr:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 99
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/tencent/mm/ah/k;->bZd:Ljava/util/HashMap;

    return-object v0
.end method
