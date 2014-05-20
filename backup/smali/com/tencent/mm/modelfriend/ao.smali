.class public final Lcom/tencent/mm/modelfriend/ao;
.super Lcom/tencent/mm/n/v;
.source "SourceFile"


# instance fields
.field private final crn:Lcom/tencent/mm/protocal/aj;

.field private final cro:Lcom/tencent/mm/protocal/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/tencent/mm/n/v;-><init>()V

    .line 96
    new-instance v0, Lcom/tencent/mm/protocal/aj;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/aj;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ao;->crn:Lcom/tencent/mm/protocal/aj;

    .line 97
    new-instance v0, Lcom/tencent/mm/protocal/ak;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/ak;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/ao;->cro:Lcom/tencent/mm/protocal/ak;

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x1ad

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "/cgi-bin/micromsg-bin/getsuggestalias"

    return-object v0
.end method

.method public final wK()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method protected final wu()Lcom/tencent/mm/protocal/p;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ao;->crn:Lcom/tencent/mm/protocal/aj;

    return-object v0
.end method

.method public final wv()Lcom/tencent/mm/protocal/q;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/ao;->cro:Lcom/tencent/mm/protocal/ak;

    return-object v0
.end method
