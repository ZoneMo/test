.class final Lcom/tencent/mm/ui/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gpa:Lcom/tencent/mm/ui/RoomInfoUI;

.field final synthetic gpj:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/RoomInfoUI;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/tencent/mm/ui/ep;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    iput p2, p0, Lcom/tencent/mm/ui/ep;->gpj:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/tencent/mm/ui/ep;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/RoomInfoUI;->d(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/b;

    iget v1, p0, Lcom/tencent/mm/ui/ep;->gpj:I

    iget-object v2, p0, Lcom/tencent/mm/ui/ep;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/b;->a(ILandroid/widget/ListView;)Landroid/view/View;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lcom/tencent/mm/ui/ep;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/RoomInfoUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/b/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    .line 279
    :cond_0
    return-void
.end method
