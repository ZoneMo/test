.class public Landroid/support/v7/internal/view/menu/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/a/a;


# static fields
.field private static final kq:[I


# instance fields
.field private eg:Ljava/util/ArrayList;

.field private kA:I

.field private kB:Landroid/view/ContextMenu$ContextMenuInfo;

.field kC:Ljava/lang/CharSequence;

.field kD:Landroid/graphics/drawable/Drawable;

.field kE:Landroid/view/View;

.field private kF:Z

.field private kG:Z

.field private kH:Z

.field private kI:Z

.field private kJ:Ljava/util/ArrayList;

.field private kK:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private kL:Landroid/support/v7/internal/view/menu/s;

.field private final kr:Landroid/content/res/Resources;

.field private ks:Z

.field private kt:Z

.field private ku:Landroid/support/v7/internal/view/menu/p;

.field private kv:Ljava/util/ArrayList;

.field private kw:Z

.field private kx:Ljava/util/ArrayList;

.field private ky:Ljava/util/ArrayList;

.field private kz:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/view/menu/o;->kq:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v1, p0, Landroid/support/v7/internal/view/menu/o;->kA:I

    .line 143
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->kF:Z

    .line 145
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->kG:Z

    .line 147
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->kH:Z

    .line 149
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->kI:Z

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kJ:Ljava/util/ArrayList;

    .line 153
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 194
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kr:Landroid/content/res/Resources;

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kv:Ljava/util/ArrayList;

    .line 200
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kw:Z

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kx:Ljava/util/ArrayList;

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/o;->ky:Ljava/util/ArrayList;

    .line 204
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kz:Z

    .line 206
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kr:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kr:Landroid/content/res/Resources;

    sget v3, Lcom/tencent/mm/e;->ZH:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kt:Z

    .line 207
    return-void

    :cond_0
    move v0, v1

    .line 206
    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 791
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 792
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 793
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->cn()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 794
    add-int/lit8 v0, v1, 0x1

    .line 798
    :goto_1
    return v0

    .line 791
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 798
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/s;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 872
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/o;->kJ:Ljava/util/ArrayList;

    .line 873
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 874
    invoke-direct {p0, v5, p1, p2}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 876
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 907
    :cond_0
    :goto_0
    return-object v0

    .line 880
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 881
    new-instance v7, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v7}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 883
    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 886
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 887
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 888
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    goto :goto_0

    .line 891
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->bU()Z

    move-result v9

    move v3, v4

    .line 894
    :goto_1
    if-ge v3, v8, :cond_7

    .line 895
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 896
    if-eqz v9, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getAlphabeticShortcut()C

    move-result v1

    .line 898
    :goto_2
    iget-object v10, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v10, v4

    if-ne v1, v10, :cond_3

    and-int/lit8 v10, v6, 0x2

    if-eqz v10, :cond_0

    :cond_3
    iget-object v10, v7, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-ne v1, v10, :cond_4

    and-int/lit8 v10, v6, 0x2

    if-nez v10, :cond_0

    :cond_4
    if-eqz v9, :cond_5

    const/16 v10, 0x8

    if-ne v1, v10, :cond_5

    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    .line 894
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 896
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getNumericShortcut()C

    move-result v1

    goto :goto_2

    :cond_7
    move-object v0, v2

    .line 907
    goto :goto_0
.end method

.method private a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    const/high16 v0, -0x1

    and-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    sget-object v1, Landroid/support/v7/internal/view/menu/o;->kq:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "order does not contain a valid category."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Landroid/support/v7/internal/view/menu/o;->kq:[I

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    or-int v5, v0, v1

    .line 403
    new-instance v0, Landroid/support/v7/internal/view/menu/s;

    iget v7, p0, Landroid/support/v7/internal/view/menu/o;->kA:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/support/v7/internal/view/menu/o;IIIILjava/lang/CharSequence;I)V

    .line 406
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kB:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_2

    .line 408
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kB:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 411
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 412
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 414
    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1155
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kr:Landroid/content/res/Resources;

    .line 1157
    if-eqz p3, :cond_0

    .line 1158
    iput-object p3, p0, Landroid/support/v7/internal/view/menu/o;->kE:Landroid/view/View;

    .line 1161
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kC:Ljava/lang/CharSequence;

    .line 1162
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kD:Landroid/graphics/drawable/Drawable;

    .line 1181
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 1182
    return-void

    .line 1164
    :cond_0
    if-eqz p1, :cond_1

    .line 1167
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->kC:Ljava/lang/CharSequence;

    .line 1170
    :cond_1
    if-eqz p2, :cond_2

    .line 1173
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/o;->kD:Landroid/graphics/drawable/Drawable;

    .line 1177
    :cond_2
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kE:Landroid/view/View;

    goto :goto_0
.end method

.method private a(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x43

    const/4 v3, 0x0

    .line 826
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->bU()Z

    move-result v4

    .line 827
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 828
    new-instance v6, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 830
    invoke-virtual {p3, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    .line 832
    if-nez v0, :cond_1

    if-eq p2, v10, :cond_1

    .line 856
    :cond_0
    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    .line 838
    :goto_0
    if-ge v2, v7, :cond_0

    .line 839
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 840
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 841
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/o;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 844
    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getAlphabeticShortcut()C

    move-result v1

    .line 846
    :goto_1
    and-int/lit8 v8, v5, 0x5

    if-nez v8, :cond_4

    if-eqz v1, :cond_4

    iget-object v8, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v8, v8, v3

    if-eq v1, v8, :cond_3

    iget-object v8, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v1, v8, :cond_3

    if-eqz v4, :cond_4

    const/16 v8, 0x8

    if-ne v1, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 853
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 844
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getNumericShortcut()C

    move-result v1

    goto :goto_1
.end method

.method private b(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 522
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 528
    if-eqz p2, :cond_0

    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final E(Landroid/view/View;)Landroid/support/v7/internal/view/menu/o;
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1240
    invoke-direct {p0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1241
    return-object p0
.end method

.method protected final a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/internal/view/menu/o;
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1216
    invoke-direct {p0, v0, p1, v0}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1217
    return-object p0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ae;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kz:Z

    .line 224
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/p;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->ku:Landroid/support/v7/internal/view/menu/p;

    .line 395
    return-void
.end method

.method a(Landroid/support/v7/internal/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 778
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->ku:Landroid/support/v7/internal/view/menu/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->ku:Landroid/support/v7/internal/view/menu/p;

    invoke-interface {v0, p2}, Landroid/support/v7/internal/view/menu/p;->h(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kr:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kr:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-direct {p0, v0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 465
    const/4 v0, 0x0

    invoke-virtual {v4, p4, p5, p6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 467
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    .line 469
    :goto_0
    and-int/lit8 v0, p7, 0x1

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/o;->removeGroup(I)V

    .line 473
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 474
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 475
    new-instance v6, Landroid/content/Intent;

    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v1, :cond_3

    move-object v1, p6

    :goto_2
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 477
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 480
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/support/v7/internal/view/menu/o;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v1

    .line 483
    if-eqz p8, :cond_1

    iget v6, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v6, :cond_1

    .line 484
    iget v0, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v1, p8, v0

    .line 473
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 467
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 475
    :cond_3
    iget v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v1, p5, v1

    goto :goto_2

    .line 488
    :cond_4
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kr:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/internal/view/menu/o;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kr:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/o;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/o;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 450
    new-instance v1, Landroid/support/v7/internal/view/menu/ak;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Landroid/support/v7/internal/view/menu/ak;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;Landroid/support/v7/internal/view/menu/s;)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/s;->b(Landroid/support/v7/internal/view/menu/ak;)V

    .line 453
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/internal/view/menu/o;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/ae;)V
    .locals 3
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 234
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ae;

    .line 235
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 236
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_2
    return-void
.end method

.method bU()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->ks:Z

    return v0
.end method

.method public bV()Z
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kt:Z

    return v0
.end method

.method public final bW()V
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->ku:Landroid/support/v7/internal/view/menu/p;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->ku:Landroid/support/v7/internal/view/menu/p;

    invoke-interface {v0, p0}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/o;)V

    .line 788
    :cond_0
    return-void
.end method

.method public final bX()V
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kF:Z

    if-nez v0, :cond_0

    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kF:Z

    .line 1014
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kG:Z

    .line 1016
    :cond_0
    return-void
.end method

.method public final bY()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1019
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->kF:Z

    .line 1021
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kG:Z

    if-eqz v0, :cond_0

    .line 1022
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->kG:Z

    .line 1023
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 1025
    :cond_0
    return-void
.end method

.method final bZ()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1034
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kw:Z

    .line 1035
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 1036
    return-void
.end method

.method protected final c(Ljava/lang/CharSequence;)Landroid/support/v7/internal/view/menu/o;
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1192
    invoke-direct {p0, p1, v0, v0}, Landroid/support/v7/internal/view/menu/o;->a(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1193
    return-object p0
.end method

.method public final c(Landroid/view/MenuItem;I)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 917
    check-cast p1, Landroid/support/v7/internal/view/menu/s;

    .line 919
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 953
    :cond_1
    :goto_0
    return v0

    .line 923
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->cm()Z

    move-result v4

    .line 925
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->cx()Landroid/support/v4/view/n;

    .line 926
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->cy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 928
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->expandActionView()Z

    move-result v0

    or-int/2addr v0, v4

    .line 929
    if-eqz v0, :cond_1

    .line 930
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/o;->l(Z)V

    goto :goto_0

    .line 932
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 933
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/o;->l(Z)V

    .line 935
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_4

    .line 936
    new-instance v0, Landroid/support/v7/internal/view/menu/ak;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0, p1}, Landroid/support/v7/internal/view/menu/ak;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;Landroid/support/v7/internal/view/menu/s;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/s;->b(Landroid/support/v7/internal/view/menu/ak;)V

    .line 939
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ak;

    .line 940
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    or-int v0, v4, v1

    .line 944
    if-nez v0, :cond_1

    .line 945
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/o;->l(Z)V

    goto :goto_0

    .line 940
    :cond_5
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/ae;

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-nez v3, :cond_a

    invoke-interface {v2, v0}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/support/v7/internal/view/menu/ak;)Z

    move-result v1

    :goto_3
    move v3, v1

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_1

    .line 948
    :cond_8
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_9

    .line 949
    invoke-virtual {p0, v6}, Landroid/support/v7/internal/view/menu/o;->l(Z)V

    :cond_9
    move v0, v4

    goto :goto_0

    :cond_a
    move v1, v3

    goto :goto_3
.end method

.method final ca()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1045
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kz:Z

    .line 1046
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 1047
    return-void
.end method

.method final cb()Ljava/util/ArrayList;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1050
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kw:Z

    if-nez v0, :cond_0

    .line 1051
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kv:Ljava/util/ArrayList;

    .line 1069
    :goto_0
    return-object v0

    .line 1055
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1057
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1059
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1060
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 1061
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    iget-object v4, p0, Landroid/support/v7/internal/view/menu/o;->kv:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1066
    :cond_2
    iput-boolean v2, p0, Landroid/support/v7/internal/view/menu/o;->kw:Z

    .line 1067
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kz:Z

    .line 1069
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kv:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final cc()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1097
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kz:Z

    if-nez v0, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1104
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ae;

    .line 1105
    if-nez v1, :cond_1

    .line 1106
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1108
    :cond_1
    invoke-interface {v1}, Landroid/support/v7/internal/view/menu/ae;->bN()Z

    move-result v0

    or-int/2addr v0, v2

    move v2, v0

    .line 1110
    goto :goto_1

    .line 1112
    :cond_2
    if-eqz v2, :cond_4

    .line 1113
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1114
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->ky:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1115
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->cb()Ljava/util/ArrayList;

    move-result-object v2

    .line 1116
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v3

    .line 1117
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1118
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 1119
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->ct()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1120
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/o;->kx:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1122
    :cond_3
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/o;->ky:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1128
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1129
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->ky:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1130
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->ky:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->cb()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1132
    :cond_5
    iput-boolean v3, p0, Landroid/support/v7/internal/view/menu/o;->kz:Z

    goto :goto_0
.end method

.method final cd()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1136
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->cc()V

    .line 1137
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kx:Ljava/util/ArrayList;

    return-object v0
.end method

.method final ce()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1141
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->cc()V

    .line 1142
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->ky:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final cf()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kC:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final cg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kD:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final ch()Landroid/view/View;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kE:Landroid/view/View;

    return-object v0
.end method

.method public ci()Landroid/support/v7/internal/view/menu/o;
    .locals 0

    .prologue
    .line 1262
    return-object p0
.end method

.method final cj()Z
    .locals 1

    .prologue
    .line 1281
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kH:Z

    return v0
.end method

.method public final ck()Landroid/support/v7/internal/view/menu/s;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kL:Landroid/support/v7/internal/view/menu/s;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kL:Landroid/support/v7/internal/view/menu/s;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kL:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->g(Landroid/support/v7/internal/view/menu/s;)Z

    .line 551
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 553
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 554
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1146
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kD:Landroid/graphics/drawable/Drawable;

    .line 1147
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kC:Ljava/lang/CharSequence;

    .line 1148
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kE:Landroid/view/View;

    .line 1150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 1151
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->l(Z)V

    .line 984
    return-void
.end method

.method public f(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1285
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return v0

    .line 1291
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->bX()V

    .line 1292
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1293
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ae;

    .line 1294
    if-nez v1, :cond_2

    .line 1295
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1296
    :cond_2
    invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/ae;->d(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1297
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->bY()V

    .line 1302
    if-eqz v0, :cond_0

    .line 1303
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->kL:Landroid/support/v7/internal/view/menu/s;

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4
    .parameter

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->size()I

    move-result v2

    .line 640
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 641
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 642
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 653
    :cond_0
    :goto_1
    return-object v0

    .line 644
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 645
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 647
    if-nez v0, :cond_0

    .line 640
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 653
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public g(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1309
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kL:Landroid/support/v7/internal/view/menu/s;

    if-eq v1, p1, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return v0

    .line 1315
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->bX()V

    .line 1316
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1317
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ae;

    .line 1318
    if-nez v1, :cond_2

    .line 1319
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1320
    :cond_2
    invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/ae;->e(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1321
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->bY()V

    .line 1326
    if-eqz v0, :cond_0

    .line 1327
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kL:Landroid/support/v7/internal/view/menu/s;

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method final getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kr:Landroid/content/res/Resources;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 625
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->size()I

    move-result v3

    move v2, v1

    .line 627
    :goto_0
    if-ge v2, v3, :cond_1

    .line 628
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 629
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const/4 v0, 0x1

    .line 634
    :goto_1
    return v0

    .line 627
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 634
    goto :goto_1
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 703
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/o;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/s;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k(Landroid/view/MenuItem;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    .line 559
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 560
    :goto_0
    if-ge v3, v5, :cond_2

    .line 561
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 562
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->cr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/s;->o(Z)V

    .line 560
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 567
    goto :goto_1

    .line 574
    :cond_2
    return-void
.end method

.method final l(Z)V
    .locals 3
    .parameter

    .prologue
    .line 965
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kI:Z

    if-eqz v0, :cond_0

    .line 979
    :goto_0
    return-void

    .line 969
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kI:Z

    .line 970
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 971
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ae;

    .line 972
    if-nez v1, :cond_1

    .line 973
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 975
    :cond_1
    invoke-interface {v1, p0, p1}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/support/v7/internal/view/menu/o;Z)V

    goto :goto_1

    .line 978
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kI:Z

    goto :goto_0
.end method

.method final m(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 994
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/o;->kF:Z

    if-nez v0, :cond_4

    .line 995
    if-eqz p1, :cond_0

    .line 996
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->kw:Z

    .line 997
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->kz:Z

    .line 1000
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->bX()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/ae;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->kK:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Landroid/support/v7/internal/view/menu/ae;->j(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->bY()V

    .line 1004
    :cond_3
    :goto_1
    return-void

    .line 1002
    :cond_4
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/o;->kG:Z

    goto :goto_1
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 913
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/o;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/internal/view/menu/o;->c(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 803
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/o;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/internal/view/menu/s;

    move-result-object v1

    .line 805
    const/4 v0, 0x0

    .line 807
    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {p0, v1, p3}, Landroid/support/v7/internal/view/menu/o;->c(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 811
    :cond_0
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    .line 812
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/o;->l(Z)V

    .line 815
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v3, v2

    .line 500
    :goto_1
    if-ltz v3, :cond_3

    .line 501
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v4, v0, v3

    move v0, v1

    .line 503
    :goto_2
    add-int/lit8 v2, v0, 0x1

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 505
    invoke-direct {p0, v3, v1}, Landroid/support/v7/internal/view/menu/o;->b(IZ)V

    move v0, v2

    goto :goto_2

    .line 498
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    move v3, v0

    goto :goto_1

    .line 509
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 511
    :cond_3
    return-void
.end method

.method public removeItem(I)V
    .locals 3
    .parameter

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/o;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getItemId()I

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(IZ)V

    .line 494
    return-void

    .line 493
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 580
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 581
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 582
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 583
    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/s;->n(Z)V

    .line 584
    invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/s;->setCheckable(Z)Landroid/view/MenuItem;

    .line 580
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 587
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 613
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 615
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 616
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 617
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 618
    invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/s;->setEnabled(Z)Landroid/view/MenuItem;

    .line 615
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 621
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 591
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    .line 597
    :goto_0
    if-ge v3, v4, :cond_0

    .line 598
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 599
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 600
    invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/s;->p(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 597
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 606
    :cond_0
    if-eqz v2, :cond_1

    .line 607
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 609
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 708
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/o;->ks:Z

    .line 710
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/o;->m(Z)V

    .line 711
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->eg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
