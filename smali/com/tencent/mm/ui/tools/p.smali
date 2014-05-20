.class final Lcom/tencent/mm/ui/tools/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/BrowserChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/p;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/p;->hhl:Lcom/tencent/mm/ui/tools/BrowserChooseActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/BrowserChooseActivity;->finish()V

    .line 165
    return-void
.end method
