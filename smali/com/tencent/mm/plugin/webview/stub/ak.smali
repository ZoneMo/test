.class final Lcom/tencent/mm/plugin/webview/stub/ak;
.super Lcom/tencent/mm/plugin/webview/stub/e;
.source "SourceFile"


# instance fields
.field public bLI:I

.field public bLJ:I

.field public bOM:Ljava/lang/String;

.field public diG:Landroid/os/Bundle;

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/tencent/mm/plugin/webview/stub/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/tencent/mm/plugin/webview/stub/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final aoT()I
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/tencent/mm/plugin/webview/stub/ak;->bLI:I

    return v0
.end method

.method public final aoU()I
    .locals 1

    .prologue
    .line 1008
    iget v0, p0, Lcom/tencent/mm/plugin/webview/stub/ak;->bLJ:I

    return v0
.end method

.method public final getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ak;->diG:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 998
    iget v0, p0, Lcom/tencent/mm/plugin/webview/stub/ak;->type:I

    return v0
.end method

.method public final xl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/tencent/mm/plugin/webview/stub/ak;->bOM:Ljava/lang/String;

    return-object v0
.end method
