.class public final Lcom/tencent/mm/modelfriend/an;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private final cmF:Lcom/tencent/mm/network/aj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/an;->cjh:Lcom/tencent/mm/n/m;

    .line 33
    new-instance v0, Lcom/tencent/mm/modelfriend/ao;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/ao;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/an;->cmF:Lcom/tencent/mm/network/aj;

    .line 34
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/an;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/aj;

    .line 35
    iget-object v1, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    iput-object p1, v1, Lcom/tencent/mm/protocal/a/ko;->fMh:Ljava/lang/String;

    .line 36
    iget-object v1, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    iput-object p2, v1, Lcom/tencent/mm/protocal/a/ko;->fMi:Ljava/lang/String;

    .line 37
    iget-object v1, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    iput-object p4, v1, Lcom/tencent/mm/protocal/a/ko;->fDe:Ljava/lang/String;

    .line 38
    iget-object v1, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    iput-object p5, v1, Lcom/tencent/mm/protocal/a/ko;->fMj:Ljava/lang/String;

    .line 39
    iget-object v1, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    iput-object p6, v1, Lcom/tencent/mm/protocal/a/ko;->fMk:Ljava/lang/String;

    .line 40
    iget-object v1, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    iput-object p7, v1, Lcom/tencent/mm/protocal/a/ko;->fMl:Ljava/lang/String;

    .line 41
    iget-object v1, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    iput p3, v1, Lcom/tencent/mm/protocal/a/ko;->fMm:I

    .line 42
    iget-object v1, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/protocal/a/ko;->fBF:Ljava/lang/String;

    .line 43
    iget-object v0, v0, Lcom/tencent/mm/protocal/aj;->fyn:Lcom/tencent/mm/protocal/a/ko;

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ko;->fBI:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p2, p0, Lcom/tencent/mm/modelfriend/an;->cjh:Lcom/tencent/mm/n/m;

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/an;->cmF:Lcom/tencent/mm/network/aj;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelfriend/an;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/aj;)Lcom/tencent/mm/n/aa;
    .locals 1
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/mm/n/aa;->cmh:Lcom/tencent/mm/n/aa;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/an;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 75
    return-void
.end method

.method protected final a(Lcom/tencent/mm/n/z;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x1ad

    return v0
.end method

.method protected final we()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x3

    return v0
.end method

.method public final zP()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/an;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ak;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ak;->fyo:Lcom/tencent/mm/protocal/a/kp;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kp;->fAD:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final zQ()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/an;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ak;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ak;->fyo:Lcom/tencent/mm/protocal/a/kp;

    iget v0, v0, Lcom/tencent/mm/protocal/a/kp;->fMo:I

    return v0
.end method

.method public final zR()[B
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/an;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ak;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ak;->fyo:Lcom/tencent/mm/protocal/a/kp;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kp;->fMn:Lcom/tencent/mm/protocal/a/rv;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final zS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/an;->cmF:Lcom/tencent/mm/network/aj;

    invoke-interface {v0}, Lcom/tencent/mm/network/aj;->wv()Lcom/tencent/mm/protocal/q;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/ak;

    iget-object v0, v0, Lcom/tencent/mm/protocal/ak;->fyo:Lcom/tencent/mm/protocal/a/kp;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/kp;->fMk:Ljava/lang/String;

    return-object v0
.end method
