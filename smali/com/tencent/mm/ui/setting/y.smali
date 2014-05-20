.class final Lcom/tencent/mm/ui/setting/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic hei:Lcom/tencent/mm/modelsimple/al;

.field final synthetic hej:Lcom/tencent/mm/ui/setting/x;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/x;Lcom/tencent/mm/modelsimple/al;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/y;->hej:Lcom/tencent/mm/ui/setting/x;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/y;->hei:Lcom/tencent/mm/modelsimple/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/y;->hei:Lcom/tencent/mm/modelsimple/al;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 91
    return-void
.end method
