.class public Landroid/support/v7/internal/view/menu/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v7/internal/view/menu/af;


# instance fields
.field private hh:Landroid/support/v7/internal/view/menu/o;

.field private kM:Landroid/app/AlertDialog;

.field kN:Landroid/support/v7/internal/view/menu/m;

.field private kO:Landroid/support/v7/internal/view/menu/af;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/o;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->hh:Landroid/support/v7/internal/view/menu/o;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/o;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 154
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->hh:Landroid/support/v7/internal/view/menu/o;

    if-ne p1, v0, :cond_1

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/r;->dismiss()V

    .line 157
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kO:Landroid/support/v7/internal/view/menu/af;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kO:Landroid/support/v7/internal/view/menu/af;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/af;->a(Landroid/support/v7/internal/view/menu/o;Z)V

    .line 160
    :cond_2
    return-void
.end method

.method public final b(Landroid/support/v7/internal/view/menu/o;)Z
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kO:Landroid/support/v7/internal/view/menu/af;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kO:Landroid/support/v7/internal/view/menu/af;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/af;->b(Landroid/support/v7/internal/view/menu/o;)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cl()V
    .locals 5

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->hh:Landroid/support/v7/internal/view/menu/o;

    .line 58
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v2, Landroid/support/v7/internal/view/menu/m;

    sget v3, Lcom/tencent/mm/k;->aRY:I

    sget v4, Lcom/tencent/mm/o;->bII:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/internal/view/menu/m;-><init>(II)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/r;->kN:Landroid/support/v7/internal/view/menu/m;

    .line 65
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->kN:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/support/v7/internal/view/menu/af;)V

    .line 66
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->hh:Landroid/support/v7/internal/view/menu/o;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/r;->kN:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/ae;)V

    .line 67
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->kN:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/m;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->ch()Landroid/view/View;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 80
    :goto_0
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kM:Landroid/app/AlertDialog;

    .line 84
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kM:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kM:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 87
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kM:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 94
    return-void

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->cg()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->cf()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public final dismiss()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kM:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kM:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 145
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->hh:Landroid/support/v7/internal/view/menu/o;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kN:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/o;->c(Landroid/view/MenuItem;I)Z

    .line 172
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->kN:Landroid/support/v7/internal/view/menu/m;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->hh:Landroid/support/v7/internal/view/menu/o;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/support/v7/internal/view/menu/o;Z)V

    .line 150
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 97
    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 98
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 100
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->kM:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 128
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->kM:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->hh:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/o;->l(Z)V

    .line 119
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->hh:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/internal/view/menu/o;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
