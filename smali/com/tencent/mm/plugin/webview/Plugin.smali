.class public Lcom/tencent/mm/plugin/webview/Plugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FM()Lcom/tencent/mm/pluginsdk/f;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/tencent/mm/plugin/webview/a/a;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/webview/a/a;-><init>()V

    return-object v0
.end method

.method public final FN()Lcom/tencent/mm/pluginsdk/b/b;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public final FO()Lcom/tencent/mm/model/bb;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/tencent/mm/ag/a;

    invoke-direct {v0}, Lcom/tencent/mm/ag/a;-><init>()V

    return-object v0
.end method
