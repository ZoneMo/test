.class final Landroid/support/v7/app/o;
.super Landroid/support/v7/app/ActionBar;
.source "SourceFile"


# instance fields
.field final hM:Landroid/support/v7/app/a;

.field final hX:Landroid/app/Activity;

.field final hY:Landroid/app/ActionBar;

.field private hZ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/o;->hZ:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Landroid/support/v7/app/o;->hX:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Landroid/support/v7/app/o;->hM:Landroid/support/v7/app/a;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/app/c;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    check-cast p1, Landroid/support/v7/app/p;

    iget-object v1, p1, Landroid/support/v7/app/p;->ia:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 220
    return-void
.end method

.method public final aR()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 81
    return-void
.end method

.method public final aS()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 157
    return-void
.end method

.method public final aT()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 167
    return-void
.end method

.method public final aU()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 172
    return-void
.end method

.method public final aV()Landroid/support/v7/app/c;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/support/v7/app/p;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/app/p;-><init>(Landroid/support/v7/app/o;Landroid/app/ActionBar$Tab;)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 214
    return-object v1
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayOptions()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final hide()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 290
    return-void
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void
.end method

.method public final setCustomView(I)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 76
    return-void
.end method

.method public final setDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 162
    return-void
.end method

.method public final setLogo(I)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(I)V

    .line 91
    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 137
    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public final setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 127
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public final show()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v7/app/o;->hY:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 285
    return-void
.end method
