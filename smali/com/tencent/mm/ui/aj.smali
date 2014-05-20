.class final Lcom/tencent/mm/ui/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cLa:I

.field final synthetic gmk:Lcom/tencent/mm/ui/LauncherUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/LauncherUI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1846
    iput-object p1, p0, Lcom/tencent/mm/ui/aj;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    iput p2, p0, Lcom/tencent/mm/ui/aj;->cLa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1852
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/aj;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    iget v1, p0, Lcom/tencent/mm/ui/aj;->cLa:I

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/ba;->p(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    :goto_0
    return-void

    .line 1854
    :catch_0
    move-exception v0

    goto :goto_0
.end method
