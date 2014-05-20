.class final Lcom/tencent/mm/ui/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/cd;


# instance fields
.field final synthetic gmk:Lcom/tencent/mm/ui/LauncherUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/tencent/mm/ui/an;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;)V
    .locals 1
    .parameter

    .prologue
    .line 823
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-interface {p1}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/n;->reset()V

    goto :goto_0
.end method
