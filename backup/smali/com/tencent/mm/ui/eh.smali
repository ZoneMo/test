.class final Lcom/tencent/mm/ui/eh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gpf:Lcom/tencent/mm/ui/eg;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/eg;)V
    .locals 0
    .parameter

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/tencent/mm/ui/eh;->gpf:Lcom/tencent/mm/ui/eg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/tencent/mm/ui/eh;->gpf:Lcom/tencent/mm/ui/eg;

    iget-object v0, v0, Lcom/tencent/mm/ui/eg;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->finish()V

    .line 1432
    return-void
.end method
