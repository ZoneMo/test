.class public final Lcom/tencent/mm/modelfriend/ak;
.super Lcom/tencent/mm/n/v;
.source "SourceFile"


# instance fields
.field private crk:Lcom/tencent/mm/protocal/aa;

.field private crl:Lcom/tencent/mm/protocal/ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/tencent/mm/n/v;-><init>()V

    .line 148
    new-instance v0, Lcom/tencent/mm/protocal/aa;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/aa;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ak;->crk:Lcom/tencent/mm/protocal/aa;

    .line 149
    new-instance v0, Lcom/tencent/mm/protocal/ab;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/ab;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ak;->crl:Lcom/tencent/mm/protocal/ab;

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x1e1

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "/cgi-bin/micromsg-bin/emailreg"

    return-object v0
.end method

.method public final wK()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method protected final wu()Lcom/tencent/mm/protocal/p;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ak;->crk:Lcom/tencent/mm/protocal/aa;

    return-object v0
.end method

.method public final wv()Lcom/tencent/mm/protocal/q;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ak;->crl:Lcom/tencent/mm/protocal/ab;

    return-object v0
.end method
