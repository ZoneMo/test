.class final Lcom/google/android/gms/internal/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/plus/c;


# instance fields
.field private final Nw:Lcom/google/android/gms/plus/c;

.field final synthetic Nx:Lcom/google/android/gms/internal/el;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/el;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->Nx:Lcom/google/android/gms/internal/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bo;->Nw:Lcom/google/android/gms/plus/c;

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->Nx:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->Nx:Lcom/google/android/gms/internal/el;

    iget v1, v1, Lcom/google/android/gms/internal/el;->Nj:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->Nx:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/el;->Nm:Landroid/widget/CompoundButton;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->Nx:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/el;->No:Lcom/google/android/gms/internal/bs;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->Nx:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/el;->Ns:Lcom/google/android/gms/internal/be;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->Nw:Lcom/google/android/gms/plus/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->Nw:Lcom/google/android/gms/plus/c;

    invoke-interface {v1, v0}, Lcom/google/android/gms/plus/c;->b(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->Nx:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/el;->Ns:Lcom/google/android/gms/internal/be;

    iget-object v0, v0, Lcom/google/android/gms/internal/be;->Nc:Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bo;->b(Landroid/content/Intent;)V

    goto :goto_1
.end method
