.class final Lcom/tencent/mm/plugin/webview/stub/aj;
.super Lcom/tencent/mm/plugin/webview/stub/b;
.source "SourceFile"


# instance fields
.field public feR:Z

.field public feS:Z

.field public ret:I

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/tencent/mm/plugin/webview/stub/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/tencent/mm/plugin/webview/stub/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public final aoS()Z
    .locals 1

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/webview/stub/aj;->feR:Z

    return v0
.end method

.method public final getResult()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/webview/stub/aj;->feS:Z

    return v0
.end method

.method public final getRet()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lcom/tencent/mm/plugin/webview/stub/aj;->ret:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lcom/tencent/mm/plugin/webview/stub/aj;->type:I

    return v0
.end method
