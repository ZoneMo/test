.class public final Lcom/tencent/mm/plugin/accountsync/Plugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public final FM()Lcom/tencent/mm/pluginsdk/f;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/tencent/mm/plugin/a/a;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/a/a;-><init>()V

    return-object v0
.end method

.method public final FN()Lcom/tencent/mm/pluginsdk/b/b;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public final FO()Lcom/tencent/mm/model/bb;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/tencent/mm/plugin/accountsync/a/f;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/accountsync/a/f;-><init>()V

    return-object v0
.end method
