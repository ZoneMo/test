.class public Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;
.super Lcom/tencent/mm/ui/b;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/az;
.implements Lcom/tencent/mm/model/ba;
.implements Lcom/tencent/mm/sdk/e/al;
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private dMh:Landroid/widget/CheckBox;

.field private dMj:Lcom/tencent/mm/ui/base/x;

.field private fry:Lcom/tencent/mm/pluginsdk/c/a;

.field private gmd:Lcom/tencent/mm/i/c;

.field private hdl:Landroid/view/View;

.field private hdm:Z

.field private hdn:Ljava/lang/String;

.field private hdo:I

.field private hdp:Lcom/tencent/mm/pluginsdk/c/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/tencent/mm/ui/b;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->dMj:Lcom/tencent/mm/ui/base/x;

    .line 80
    iput-boolean v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdm:Z

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdn:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdo:I

    .line 93
    new-instance v0, Lcom/tencent/mm/ui/pluginapp/p;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/pluginapp/p;-><init>(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->fry:Lcom/tencent/mm/pluginsdk/c/a;

    .line 104
    new-instance v0, Lcom/tencent/mm/ui/pluginapp/q;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/pluginapp/q;-><init>(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdp:Lcom/tencent/mm/pluginsdk/c/a;

    .line 114
    new-instance v0, Lcom/tencent/mm/ui/pluginapp/r;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/pluginapp/r;-><init>(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->gmd:Lcom/tencent/mm/i/c;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLY()V

    return-void
.end method

.method private aLX()V
    .locals 10

    .prologue
    const v9, 0x7f020599

    const v3, 0x41004

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 168
    const-string v0, "emoji"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_emoji_store"

    invoke-interface {v0, v1, v8}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_emoji_store"

    invoke-interface {v0, v1, v7}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 174
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40003

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v1

    .line 175
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v2, 0x40005

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/i/a;->x(II)Z

    move-result v2

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "settings_emoji_store"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 177
    if-eqz v0, :cond_0

    .line 181
    const-string v3, "MicroMsg.FindMoreFriendsUI"

    const-string v4, "NewBandage.hasNew(), NEW_BANDAGE_WATCHER_SETTING_EMOJI_ENTRY isNewEmoji : %s, isFreeEmoji : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 184
    const v1, 0x7f0709f3

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0

    .line 185
    :cond_2
    if-eqz v1, :cond_3

    .line 186
    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 187
    const v1, 0x7f0709f2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0

    .line 189
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 190
    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private aLY()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const v7, 0x7f02081c

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 198
    const-string v0, "sns"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 199
    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v0, "album_dyna_photo_ui_title"

    move-object v5, v1

    move-object v1, v0

    move v0, v4

    .line 237
    :goto_0
    invoke-interface {v5, v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "add_more_friends"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 242
    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "add_more_friends"

    invoke-static {}, Lcom/tencent/mm/e/d;->qB()Lcom/tencent/mm/e/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/e/a;->qs()Z

    move-result v5

    invoke-interface {v0, v1, v5}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 247
    :cond_1
    const-string v0, "nearby"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 248
    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v0, "find_friends_by_near"

    move-object v5, v1

    move-object v1, v0

    move v0, v4

    .line 272
    :goto_1
    invoke-interface {v5, v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 276
    :cond_2
    const-string v0, "shake"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 277
    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v0, "find_friends_by_shake"

    move-object v5, v1

    move-object v1, v0

    move v0, v4

    .line 303
    :goto_2
    invoke-interface {v5, v1, v0}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 307
    :cond_3
    const-string v0, "bottle"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "voice_bottle"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 319
    :cond_4
    :goto_3
    const-string v0, "game"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "more_tab_game_recommend"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 333
    :cond_5
    :goto_4
    const-string v0, "scanner"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 334
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "find_friends_by_qrcode"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 339
    :goto_5
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v4

    .line 340
    :goto_6
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_24

    :cond_6
    move v0, v4

    .line 341
    :goto_7
    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "find_friends_by_qq"

    invoke-interface {v1, v3, v0}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 343
    invoke-static {}, Lcom/tencent/mm/x/b;->Bg()Z

    .line 344
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "find_friends_by_facebook"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 346
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "find_friends_by_google_account"

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->Bj()Z

    move-result v3

    if-nez v3, :cond_25

    :goto_8
    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 351
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 352
    return-void

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "album_dyna_photo_ui_title"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "album_dyna_photo_ui_title"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/friend/FriendSnsPreference;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v1

    const v5, 0x8000

    and-int/2addr v1, v5

    if-nez v1, :cond_c

    move v5, v4

    .line 205
    :goto_9
    if-eqz v5, :cond_b

    .line 206
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v6, 0x7f020406

    invoke-static {v1, v6}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Boolean;)Z

    move-result v1

    .line 209
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->np(I)V

    .line 210
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->nP(I)V

    .line 211
    if-eqz v1, :cond_8

    .line 212
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->np(I)V

    .line 213
    const v1, 0x7f0709f2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f020599

    invoke-virtual {v0, v1, v6}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->aq(Ljava/lang/String;I)V

    .line 216
    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v6, 0x10b19

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdn:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdn:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 218
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->nr(I)V

    .line 219
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v1

    const v6, 0x10b20

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->nP(I)V

    .line 220
    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->xm(Ljava/lang/String;)V

    .line 226
    :goto_b
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apA()Lcom/tencent/mm/pluginsdk/u;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 227
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apA()Lcom/tencent/mm/pluginsdk/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/pluginsdk/u;->Dr()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdo:I

    .line 229
    :cond_9
    iget v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdo:I

    if-eqz v1, :cond_a

    .line 230
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->np(I)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdo:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->aq(Ljava/lang/String;I)V

    .line 234
    :cond_a
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/c/a/hl;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/hl;-><init>()V

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 237
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v0, "album_dyna_photo_ui_title"

    if-nez v5, :cond_f

    move-object v5, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_0

    :cond_c
    move v5, v2

    .line 204
    goto/16 :goto_9

    :cond_d
    move v1, v3

    .line 219
    goto :goto_a

    .line 223
    :cond_e
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/friend/FriendSnsPreference;->nr(I)V

    goto :goto_b

    :cond_f
    move-object v5, v1

    move-object v1, v0

    move v0, v2

    .line 237
    goto/16 :goto_0

    .line 250
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "find_friends_by_near"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "find_friends_by_near"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 252
    if-eqz v0, :cond_2

    .line 253
    new-instance v1, Lcom/tencent/mm/c/a/da;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/da;-><init>()V

    iget-object v5, v1, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    const/4 v6, 0x7

    iput v6, v5, Lcom/tencent/mm/c/a/db;->bOd:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v1, v1, Lcom/tencent/mm/c/a/da;->bOc:Lcom/tencent/mm/c/a/dc;

    iget-boolean v1, v1, Lcom/tencent/mm/c/a/dc;->bMh:Z

    if-eqz v1, :cond_11

    .line 254
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/IconPreference;->nr(I)V

    .line 262
    :goto_c
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dz()Lcom/tencent/mm/ah/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ah/h;->Dr()I

    move-result v1

    .line 263
    if-lez v1, :cond_12

    .line 264
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 265
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    .line 271
    :goto_d
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_13

    move v0, v4

    .line 272
    :goto_e
    iget-object v5, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "find_friends_by_near"

    if-nez v0, :cond_14

    move v0, v4

    goto/16 :goto_1

    .line 257
    :cond_11
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->nr(I)V

    .line 258
    const v1, 0x7f020529

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->nq(I)V

    .line 259
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aIc()V

    goto :goto_c

    .line 267
    :cond_12
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 268
    const-string v1, ""

    invoke-virtual {v0, v1, v8}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_d

    :cond_13
    move v0, v2

    .line 271
    goto :goto_e

    :cond_14
    move v0, v2

    .line 272
    goto/16 :goto_1

    .line 279
    :cond_15
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "find_friends_by_shake"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 280
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "find_friends_by_shake"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 281
    if-eqz v0, :cond_3

    .line 282
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_17

    move v5, v4

    .line 283
    :goto_f
    if-eqz v5, :cond_16

    .line 286
    invoke-static {}, Lcom/tencent/mm/ah/k;->DA()Lcom/tencent/mm/ah/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ah/j;->Dr()I

    move-result v1

    .line 287
    if-lez v1, :cond_18

    .line 288
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 289
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    .line 295
    :goto_10
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sn()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 296
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->nr(I)V

    .line 297
    const v1, 0x7f0206e9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->nq(I)V

    .line 298
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aIc()V

    .line 303
    :cond_16
    :goto_11
    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v0, "find_friends_by_shake"

    if-nez v5, :cond_1a

    move-object v5, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_2

    :cond_17
    move v5, v2

    .line 282
    goto :goto_f

    .line 291
    :cond_18
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 292
    const-string v1, ""

    invoke-virtual {v0, v1, v8}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    goto :goto_10

    .line 300
    :cond_19
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/IconPreference;->nr(I)V

    goto :goto_11

    :cond_1a
    move-object v5, v1

    move-object v1, v0

    move v0, v2

    .line 303
    goto/16 :goto_2

    .line 310
    :cond_1b
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "voice_bottle"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 311
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "voice_bottle"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 312
    if-eqz v0, :cond_4

    .line 313
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1d

    move v0, v4

    :goto_12
    iput-boolean v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdm:Z

    .line 314
    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v5, "voice_bottle"

    iget-boolean v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdm:Z

    if-nez v0, :cond_1e

    move v0, v4

    :goto_13
    invoke-interface {v1, v5, v0}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 315
    iget-boolean v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdm:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "voice_bottle"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/x;->tU()I

    move-result v1

    if-lez v1, :cond_1c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    :cond_1c
    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v5

    if-lez v1, :cond_1f

    const v1, 0x8000

    and-int/2addr v1, v5

    if-nez v1, :cond_1f

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    goto/16 :goto_3

    :cond_1d
    move v0, v2

    .line 313
    goto :goto_12

    :cond_1e
    move v0, v2

    .line 314
    goto :goto_13

    .line 315
    :cond_1f
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    goto/16 :goto_3

    .line 322
    :cond_20
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "more_tab_game_recommend"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 323
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_5

    .line 325
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ag;->az(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 326
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "more_tab_game_recommend"

    invoke-interface {v0, v1, v4}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 328
    :cond_21
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLZ()V

    goto/16 :goto_4

    .line 336
    :cond_22
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "find_friends_by_qrcode"

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_23
    move v0, v2

    .line 339
    goto/16 :goto_6

    :cond_24
    move v0, v2

    .line 340
    goto/16 :goto_7

    :cond_25
    move v4, v2

    .line 346
    goto/16 :goto_8
.end method

.method private aLZ()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 596
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v0

    .line 597
    if-nez v0, :cond_1

    .line 598
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "get subcoregamecenter is null ,return"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ag;->Pd()I

    move-result v1

    .line 602
    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ag;->Pe()I

    move-result v2

    .line 603
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "more_tab_game_recommend"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/IconPreference;

    .line 604
    if-eqz v0, :cond_0

    .line 608
    if-lez v2, :cond_2

    .line 609
    const v1, 0x7f0709f2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020599

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    .line 610
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    goto :goto_0

    .line 614
    :cond_2
    if-lez v1, :cond_3

    .line 615
    const-string v1, ""

    const v2, 0x7f02081d

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    .line 616
    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    goto :goto_0

    .line 621
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/preference/IconPreference;->np(I)V

    .line 622
    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/IconPreference;->aq(Ljava/lang/String;I)V

    .line 623
    new-instance v0, Lcom/tencent/mm/c/a/cj;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cj;-><init>()V

    .line 624
    iget-object v1, v0, Lcom/tencent/mm/c/a/cj;->bNM:Lcom/tencent/mm/c/a/ck;

    iput-boolean v4, v1, Lcom/tencent/mm/c/a/ck;->bNN:Z

    .line 625
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLZ()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLX()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)Lcom/tencent/mm/ui/base/preference/n;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->dMh:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aFo()V

    .line 133
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 134
    return-void
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    .line 88
    const v0, 0x7f050028

    return v0
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLY()V

    .line 779
    return-void
.end method

.method public final a(Lcom/tencent/mm/protocal/a/uj;)V
    .locals 2
    .parameter

    .prologue
    .line 631
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 635
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdo:I

    .line 637
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLY()V

    goto :goto_0
.end method

.method protected final aDG()V
    .locals 2

    .prologue
    .line 661
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "on tab create"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->FR()V

    .line 663
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "on tab create end"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method protected final aDH()V
    .locals 3

    .prologue
    .line 668
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "on tab resume"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->gmd:Lcom/tencent/mm/i/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/i/a;->a(Lcom/tencent/mm/i/c;)V

    .line 671
    const-string v0, "LBSVerifyStorageNotify"

    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->fry:Lcom/tencent/mm/pluginsdk/c/a;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/c/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/c/a;)V

    .line 672
    const-string v0, "GameMessageStorageNotify"

    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdp:Lcom/tencent/mm/pluginsdk/c/a;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/c/a;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/c/a;)V

    .line 676
    invoke-static {}, Lcom/tencent/mm/ah/k;->DA()Lcom/tencent/mm/ah/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ah/j;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 677
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 678
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/model/ba;)V

    .line 679
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apC()Lcom/tencent/mm/pluginsdk/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apC()Lcom/tencent/mm/pluginsdk/aa;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/aa;->a(Lcom/tencent/mm/model/az;)V

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLX()V

    .line 683
    const-string v0, "card"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_mm_card_package"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 684
    :goto_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLY()V

    .line 685
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "on tab resume end"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const v0, 0x7f0a087c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 690
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/mm/ui/pluginapp/u;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/pluginapp/u;-><init>(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    :cond_1
    return-void

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "settings_mm_card_package"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final aDI()V
    .locals 2

    .prologue
    .line 708
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "on tab start"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method protected final aDJ()V
    .locals 2

    .prologue
    .line 713
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "on tab pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    const-string v0, "LBSVerifyStorageNotify"

    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->fry:Lcom/tencent/mm/pluginsdk/c/a;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/c/a;->b(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/c/a;)V

    .line 717
    const-string v0, "GameMessageStorageNotify"

    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdp:Lcom/tencent/mm/pluginsdk/c/a;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/c/a;->b(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/c/a;)V

    .line 720
    invoke-static {}, Lcom/tencent/mm/ah/k;->DA()Lcom/tencent/mm/ah/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ah/j;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 721
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/o;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 722
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/model/b;->b(Lcom/tencent/mm/model/ba;)V

    .line 723
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->gmd:Lcom/tencent/mm/i/c;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/i/a;->b(Lcom/tencent/mm/i/c;)V

    .line 725
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apC()Lcom/tencent/mm/pluginsdk/aa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 726
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apC()Lcom/tencent/mm/pluginsdk/aa;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/aa;->b(Lcom/tencent/mm/model/az;)V

    .line 729
    :cond_1
    return-void
.end method

.method protected final aDK()V
    .locals 2

    .prologue
    .line 733
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "on tab stop"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method protected final aDL()V
    .locals 2

    .prologue
    .line 738
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "on tab destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public final aDN()V
    .locals 2

    .prologue
    .line 749
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "turn to bg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->arP()V

    .line 754
    return-void
.end method

.method public final aDO()V
    .locals 2

    .prologue
    .line 758
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "turn to fg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const v1, 0x7f050028

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->addPreferencesFromResource(I)V

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aIo()V

    .line 763
    return-void
.end method

.method public final aDQ()V
    .locals 2

    .prologue
    .line 767
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "on tab recreate ui"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method protected final aFq()Z
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x1

    return v0
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLY()V

    .line 774
    return-void
.end method

.method public final f(Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const v6, 0x41004

    const v4, 0x10b19

    const/4 v1, 0x0

    const/16 v5, 0x2ace

    const/4 v2, 0x1

    .line 357
    const-string v0, "album_dyna_photo_ui_title"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    .line 533
    :goto_0
    return v2

    .line 363
    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/d/c/m;->hx(I)V

    .line 364
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdn:Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v4, v3}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 366
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 367
    const-string v0, "sns_timeline_NeedFirstLoadint"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdn:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    .line 372
    :goto_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apA()Lcom/tencent/mm/pluginsdk/u;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 373
    invoke-static {}, Lcom/tencent/mm/pluginsdk/aq;->apA()Lcom/tencent/mm/pluginsdk/u;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/mm/pluginsdk/u;->Dr()I

    move-result v4

    iput v4, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdo:I

    .line 374
    iget v4, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdo:I

    if-lez v4, :cond_1

    .line 376
    :goto_2
    const-string v0, "sns_resume_state"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sns"

    const-string v4, ".ui.SnsTimeLineUI"

    invoke-static {v0, v1, v4, v3}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 379
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "1"

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v0

    .line 374
    goto :goto_2

    .line 383
    :cond_2
    const-string v0, "add_more_friends"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/tencent/mm/ui/pluginapp/AddMoreFriendsUI;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    .line 386
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2800

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_3
    const-string v0, "find_friends_by_near"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 391
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v3, "4"

    invoke-virtual {v0, v5, v3}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x1007

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Boolean;)Z

    move-result v0

    .line 393
    if-nez v0, :cond_4

    .line 394
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "nearby"

    const-string v3, ".ui.NearbyFriendsIntroUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/co;->vx()Lcom/tencent/mm/model/co;

    move-result-object v0

    .line 398
    if-nez v0, :cond_5

    .line 399
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "nearby"

    const-string v3, ".ui.NearbyPersonalInfoUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/model/co;->rC()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-virtual {v0}, Lcom/tencent/mm/model/co;->rk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 404
    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_7

    .line 405
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "nearby"

    const-string v3, ".ui.NearbyPersonalInfoUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    :cond_7
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x1008

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 409
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 410
    :cond_8
    invoke-static {}, Lcom/tencent/mm/ui/LauncherUI;->aEA()Lcom/tencent/mm/ui/LauncherUI;

    move-result-object v0

    const-string v1, "tab_find_friend"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->vS(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dz()Lcom/tencent/mm/ah/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ah/h;->Dr()I

    move-result v0

    if-lez v0, :cond_9

    .line 412
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "nearby"

    const-string v3, ".ui.NearbyFriendShowSayHiUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "nearby"

    const-string v3, ".ui.NearbyFriendsUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdl:Landroid/view/View;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f030157

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdl:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdl:Landroid/view/View;

    const v3, 0x7f0a044d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->dMh:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->dMh:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->dMj:Lcom/tencent/mm/ui/base/x;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->hdl:Landroid/view/View;

    new-instance v4, Lcom/tencent/mm/ui/pluginapp/t;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/pluginapp/t;-><init>(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->dMj:Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->dMj:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    goto/16 :goto_0

    .line 425
    :cond_d
    const-string v0, "find_friends_by_shake"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 426
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "3"

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/c/a/fe;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/fe;-><init>()V

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 428
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "shake"

    const-string v3, ".ui.ShakeReportUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_e
    const-string v0, "voice_bottle"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 433
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v3, "5"

    invoke-virtual {v0, v5, v3}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/tencent/mm/model/co;->vw()Lcom/tencent/mm/model/co;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/tencent/mm/model/co;->rk()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/platformtools/cj;->a(Ljava/lang/Integer;I)I

    move-result v1

    if-lez v1, :cond_f

    invoke-virtual {v0}, Lcom/tencent/mm/model/co;->rC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 436
    :cond_f
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bottle"

    const-string v3, ".ui.BottleWizardStep1"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    :cond_10
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bottle"

    const-string v3, ".ui.BottleBeachUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_11
    const-string v0, "find_friends_by_qrcode"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 446
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "2"

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "scanner"

    const-string v3, ".ui.BaseScanUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    :cond_12
    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "more_tab_game_recommend"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 460
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "6"

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    .line 462
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 465
    :cond_13
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "game"

    const-string v3, ".ui.GameCenterUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_14

    .line 468
    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ag;->Po()V

    .line 471
    :cond_14
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/pluginapp/s;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/pluginapp/s;-><init>(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 485
    :cond_15
    const-string v0, "find_friends_by_micromsg"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/tencent/mm/ui/pluginapp/ContactSearchUI;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 490
    :cond_16
    const-string v0, "find_friends_by_qq"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 491
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/tencent/mm/ui/bindqq/QQGroupUI;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 495
    :cond_17
    const-string v0, "find_friends_by_mobile"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 497
    invoke-static {}, Lcom/tencent/mm/modelfriend/z;->zp()Lcom/tencent/mm/modelfriend/aa;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/aa;->crc:Lcom/tencent/mm/modelfriend/aa;

    if-eq v0, v1, :cond_18

    .line 498
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMWizardActivity;->j(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 502
    :cond_18
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/tencent/mm/ui/bindmobile/MobileFriendUI;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 506
    :cond_19
    const-string v0, "find_friends_by_facebook"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/tencent/mm/ui/account/FacebookFriendUI;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 511
    :cond_1a
    const-string v0, "find_friends_by_google_account"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 512
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    invoke-static {}, Lcom/tencent/mm/modelfriend/ab;->zy()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/tencent/mm/ui/bindgooglecontact/BindGoogleContactIntroUI;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    const-string v1, "enter_scene"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->j(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 518
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    const-string v1, "enter_scene"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 523
    :cond_1c
    const-string v0, "settings_mm_card_package"

    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 524
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "card"

    const-string v3, ".ui.CardIndexUI"

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ak/a;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    :cond_1d
    invoke-virtual {p1}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "settings_emoji_store"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 529
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const-string v1, "7"

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40003

    invoke-virtual {v0, v1, v6}, Lcom/tencent/mm/i/a;->y(II)V

    invoke-static {}, Lcom/tencent/mm/i/i;->rX()Lcom/tencent/mm/i/a;

    move-result-object v0

    const v1, 0x40005

    invoke-virtual {v0, v1, v6}, Lcom/tencent/mm/i/a;->y(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "preceding_scence"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "emoji"

    const-string v4, ".ui.EmojiStoreUI"

    invoke-static {v1, v3, v4, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1e
    move v2, v1

    .line 533
    goto/16 :goto_0

    :cond_1f
    move v1, v0

    goto/16 :goto_2

    :cond_20
    move v0, v2

    goto/16 :goto_1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "MicroMsg.FindMoreFriendsUI"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 142
    return-void
.end method

.method public final ue()V
    .locals 2

    .prologue
    .line 642
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLY()V

    goto :goto_0
.end method

.method public final uf()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->aLY()V

    goto :goto_0
.end method
