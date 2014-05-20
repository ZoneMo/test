.class final Lcom/tencent/mm/ui/conversation/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hab:Lcom/tencent/mm/ui/conversation/cf;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ch;->hab:Lcom/tencent/mm/ui/conversation/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ch;->hab:Lcom/tencent/mm/ui/conversation/cf;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/cf;->haa:Lcom/tencent/mm/ui/conversation/NetWarnView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ch;->hab:Lcom/tencent/mm/ui/conversation/cf;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/cf;->haa:Lcom/tencent/mm/ui/conversation/NetWarnView;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->c(Lcom/tencent/mm/ui/conversation/NetWarnView;)Z

    .line 373
    return-void
.end method
