.class final Lcom/tencent/mm/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gmk:Lcom/tencent/mm/ui/LauncherUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/tencent/mm/ui/ao;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/tencent/mm/ui/ao;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->c(Lcom/tencent/mm/ui/LauncherUI;)V

    .line 906
    iget-object v0, p0, Lcom/tencent/mm/ui/ao;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->d(Lcom/tencent/mm/ui/LauncherUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/tencent/mm/ui/ao;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->e(Lcom/tencent/mm/ui/LauncherUI;)V

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/ao;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/ao;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->s(Landroid/app/Activity;)Z

    .line 911
    return-void
.end method
