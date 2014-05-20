.class public final Lcom/tencent/mm/plugin/wallet/a;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    check-cast p1, Lcom/tencent/mm/c/a/fs;

    iget-object v0, p1, Lcom/tencent/mm/c/a/fs;->bQm:Lcom/tencent/mm/c/a/ft;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ft;->bQo:[B

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/d/a;->ar([B)Z

    .line 17
    const/4 v0, 0x0

    return v0
.end method
